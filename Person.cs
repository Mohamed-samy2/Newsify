using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SQLite;
using System.Text.RegularExpressions;
using System.Windows.Media.Imaging;
using System.IO;

namespace Newsify
{
	public class Person
	{
		protected String Fname;
		protected String Lname;
		protected String user_name;
		protected String email;
		protected String password;
		protected DateTime birthdate;
		protected int age;
		protected string phoneNo;
		protected byte[] person_photo;
		protected string admin_user;
		//protected static List<Person> persons_data;
		protected static Dictionary<string, Person> map_of_person;
		static Person()
		{
			SQLiteConnection conn = new SQLiteConnection(@"Datasource=E:\Newsify\database.db");
			conn.Open();
			//persons_data = new List<Person>();
			map_of_person = new Dictionary<string, Person>();
			SQLiteCommand cmd = new SQLiteCommand();
			cmd.Connection = conn;
			cmd.CommandText = "select * from admin_user";
			cmd.CommandType = System.Data.CommandType.Text;

			SQLiteDataReader dr = cmd.ExecuteReader();
			while (dr.Read())
			{
				Person p = new Person
				{
					Fname = dr[0].ToString(),
					Lname = dr[1].ToString(),
					user_name = dr[2].ToString(),
					email = dr[3].ToString(),
					password = dr[4].ToString(),
					birthdate = Convert.ToDateTime(dr[5]),
					age = Convert.ToInt32(dr[6]),
					phoneNo = dr[7].ToString(),
                    person_photo = (byte[])dr[8],
                    admin_user =dr[9].ToString()
				};
				//persons_data.Add(p);
				map_of_person[dr[2].ToString().ToLower()] = p;
			}
			dr.Close();
			conn.Close();

		}


		public static byte[] imagetoByte(BitmapImage image)

		{
			MemoryStream memStream = new MemoryStream();
			BitmapEncoder encoder = new JpegBitmapEncoder();
			encoder.Frames.Add(BitmapFrame.Create(image));
			encoder.Save(memStream);
			return memStream.ToArray();
		}
		public static void save_persons()
		{
			SQLiteConnection conn = new SQLiteConnection(@"Datasource=E:\Newsify\database.db");
			conn.Open();

			SQLiteCommand insert = new SQLiteCommand();
			insert.Connection = conn;
			insert.CommandText = "delete from admin_user";
			insert.ExecuteNonQuery();
			insert.CommandText = "insert into admin_user values(@fname, @lname, @user_name, @email, @password, @birthdate, @age, @phoneno,@photo, @admin_user)";
			insert.CommandType = System.Data.CommandType.Text;

			foreach (Person per in map_of_person.Values)
			{


				insert.Parameters.AddWithValue("@fname", per.Fname);
				insert.Parameters.AddWithValue("@lname", per.Lname);
				insert.Parameters.AddWithValue("@user_name", per.user_name);
				insert.Parameters.AddWithValue("@email", per.email);
				insert.Parameters.AddWithValue("@password", per.password);
				insert.Parameters.AddWithValue("@birthdate", per.birthdate);
				insert.Parameters.AddWithValue("@age", per.age);
				insert.Parameters.AddWithValue("@phoneno", per.phoneNo);
				insert.Parameters.AddWithValue("@photo", per.person_photo);
				insert.Parameters.AddWithValue("@admin_user", per.admin_user);
				insert.ExecuteNonQuery();
				insert.Parameters.Clear();
			}

			conn.Close();
		}

		public void AddPerson(String Fname, String Lname, String user_name, String email, String password, DateTime birthdate,  string phoneNo, BitmapImage image ,string au) //zeiad
		{

			Person p = new Person();

			p.Fname = Fname;
			p.Lname = Lname;
			p.user_name = user_name;
			p.email = email;
			p.password = password;
			p.birthdate = birthdate;
			p.age = convert_birthdate_to_age(birthdate);
			p.phoneNo = phoneNo;
			p.person_photo = imagetoByte(image);
			p.admin_user = au;

			map_of_person[user_name] = p;

			
		}




		//public static List<Person> GetDataPersons()
		//{
		//	return persons_data;
		//}


		public string get_fname()
		{
			return Fname;
		}
		public void set_fname(string fname)
		{
			this.Fname = fname;

		}
		public string get_lname()
		{
			return Lname;
		}
		public void set_lname(string lname)
		{
			this.Lname = lname;

		}


		public string get_user_name()
		{
			return user_name;
		}
		public void set_user_name(string username)
		{
			this.user_name = username;

		}
		public string get_email()
		{
			return email;
		}
		public void set_email(string email)
		{
			this.email = email;

		}

		public string get_password()
		{
			return password;
		}
		public void set_password(string pass)
		{
			this.password = pass;

		}
		public DateTime get_birthdate()
		{
			return birthdate;
		}
		public void set_birthdate(DateTime bd)
		{
			this.birthdate = bd;

		}

		public int get_age()
		{
			return age;
		}
		public void set_age(int ag)
		{
			this.age = ag;

		}

		public string get_phoneno()
		{
			return phoneNo;
		}
		public void set_phone(string phone)
		{
			this.phoneNo = phone;

		}

		public string get_admin_user()
        {
			return this.admin_user;
        }
		public void set_admin_user(string v)
        {
			this.admin_user = v;
        }
		public byte[] get_photo()
        {
			return this.person_photo;
        }
		public void set_photo(byte[] p)
        {
			this.person_photo = p;
        }

		public bool usernameExist(String username) //moa
		{

			if (map_of_person.ContainsKey(username.ToLower()))
            {
				return true;
            }

			//foreach (Person person in persons_data)
			//{
			//	if (person.get_user_name() == username)
			//	{
			//		return true;
			//	}
				
			//}

			return false;
		}
		public bool emailExist(String email) //moa
		{

				bool check = false;


				foreach (Person p in map_of_person.Values)
				{
					if (p.get_email().ToLower() == email.ToLower())
					{
						check = true;
					}
				}


				return check;

			}

			public int login(String username, String pass) //moa
			{
			int check = -1;


			if (map_of_person.ContainsKey(username.ToLower()))
			{
				if (map_of_person[username.ToLower()].get_password() == pass)
				{
					if (map_of_person[username.ToLower()].get_admin_user() == "a")
					{
						check = 1;
					}
					else if (map_of_person[username.ToLower()].get_admin_user() == "u")
					{
						check = 2;
					}
				}
			}
			else
			{
				check = -1;
			}

			return check;

		}

		public Admin adminLogin(String username) //moa
		{
			Admin a = new Admin();


			if (map_of_person.ContainsKey(username.ToLower()))
			{

				a.set_fname(map_of_person[username.ToLower()].Fname);
				a.set_lname(map_of_person[username.ToLower()].Lname);
				a.set_user_name(map_of_person[username.ToLower()].user_name);
				a.set_email(map_of_person[username.ToLower()].email);
				a.set_password(map_of_person[username.ToLower()].password);
				a.set_birthdate(map_of_person[username.ToLower()].birthdate);
				a.set_age(map_of_person[username.ToLower()].age);
				a.set_phone(map_of_person[username.ToLower()].phoneNo);
				a.person_photo = map_of_person[username.ToLower()].person_photo;
				a.set_admin_user(map_of_person[username.ToLower()].admin_user);
			}


			return a;

		}

		public User userLogin(String username) //moa
		{
			User a = new User();


			if (map_of_person.ContainsKey(username))
			{

				a.set_fname(map_of_person[username.ToLower()].Fname);
				a.set_lname(map_of_person[username.ToLower()].Lname);
				a.set_user_name(map_of_person[username.ToLower()].user_name);
				a.set_email(map_of_person[username.ToLower()].email);
				a.set_password(map_of_person[username.ToLower()].password);
				a.set_birthdate(map_of_person[username.ToLower()].birthdate);
				a.set_age(map_of_person[username.ToLower()].age);
				a.set_phone(map_of_person[username.ToLower()].phoneNo);
				a.person_photo = map_of_person[username.ToLower()].person_photo;
				a.set_admin_user(map_of_person[username.ToLower()].admin_user);
			}


			return a;


		}





		public bool Check_valid_PhoneNo(string phone) //abdo
		{// abdo

			bool x = true;
			if (phone.Length != 11)
			{
				x = false;
			}
			else if (!(phone[0] == '0'))
			{
				x = false;
			}
			else if (!(phone[1] == '1'))
			{
				x = false;
			}
			else if (!((phone[2] == '0') || (phone[2] == '1') || (phone[2] == '2') || (phone[2] == '5')))
			{
				x = false;
			}
			if (x)
			{
				for (int i = 3; i < phone.Length; i++)
				{
					if (!((phone[i] == '0') || (phone[i] == '1') || (phone[i] == '2') || (phone[i] == '3') || (phone[i] == '4') || (phone[i] == '5') || (phone[i] == '6') || (phone[i] == '7') || (phone[i] == '8') || (phone[i] == '9')))
					{
						x = false;
					}
				}
			}
			return x;
		}

		public bool Check_valid_Pass(string password)
		{// abdo
			bool x = true;
			if (password.Length != 8)
			{
				x = false;
				return x;
			}
			for (int i = 0; i < password.Length; i++)
			{
				if (password[i] == ' ')
				{
					x = false;
				}
			}
			return x;
		}


		private int convert_birthdate_to_age(DateTime D)
		{// abdo
		 //DateTime D = Convert.ToDateTime(birth_date);
			int age = (int)((DateTime.Now - D).TotalDays / 365.242199);
			return age;
		}

		public bool check_valid_age(DateTime birthdate)
		{// abdo
			int age = convert_birthdate_to_age(birthdate);
			if ((age >= 7) && (age <= 100))
			{
				return true;
			}
			return false;
		}
		public bool check_valid_mail(string email)
		{// abdo


			string regex = @"^[^@\s]+@[^@\s]+\.(com|net|org|gov)$";

			return Regex.IsMatch(email, regex, RegexOptions.IgnoreCase);
		}
		public bool check_valid_name(string name) //abdo
		{
			//// you have to include this libraries 
			///	using System;  
			///	using System.Linq;
			return name.All(Char.IsLetter); ;
		}

		public bool check_valid_username(string username) //abdo
		{

			if ((username[0] == ' ') || (username[0] == '.'))
			{
				return false;
			}
			else
			{
				for (int i = 0; i < username.Length; i++)
				{
					if ((username[i] == ' ') || (username[i] == '!') || (username[i] == '@') || (username[i] == '#') || (username[i] == '$') || (username[i] == '%') || (username[i] == '^') || (username[i] == '&') || (username[i] == '*') || (username[i] == '(') || (username[i] == ')') || (username[i] == '-') || (username[i] == '+') || (username[i] == '=') || (username[i] == '[') || (username[i] == ']') || (username[i] == '{') || (username[i] == '}') || (username[i] == '?') || (username[i] == '<') || (username[i] == '>') || (username[i] == '/') || (username[i] == ',') || (username[i] == '|') || (username[i] == '~') || (username[i] == ';') || (username[i] == ':'))
					{
						return false;
					}
				}
			}
			return true;
		}

	}
}

