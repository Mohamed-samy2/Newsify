using Newssify;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace Newsify
{
   public class User : Person
    {
        public void changePassword(String usernmae, String newPassword) //moa
        {
            if (map_of_person.ContainsKey(usernmae))
            {
                map_of_person[usernmae.ToLower()].set_password(newPassword);
            }

        }


        public void change_phone_number(string username,string phone) //samy
        {
            if(map_of_person.ContainsKey(username))
            map_of_person[username.ToLower()].set_phone(phone); 
                
         }

		public void insertRate(int neww, double rate) //moa
        {
            foreach (News n in News.news_data)
            {
                if ( n.get_id() == neww)
                {
                    String x = string.Format("{0:0.0}", (((n.get_rate() * n.get_no_users()) + (rate * (n.get_no_users() + 1))) / (n.get_no_users() + n.get_no_users() + 1)));
                    n.set_rate(double.Parse(x));
                    n.set_no_user(n.get_no_users() + 1);
                    break;
                }
            }

        }
        public  void add_spam(string username, int news_id)  //zeiad
        {


            if (News.spam.ContainsKey(username))
            {
                News.spam[username].Add(news_id);

            }
            else
            {
                News.spam.Add(username, new HashSet<int> { news_id });
            }

        }
        public  void AddComment(int news_id, string username, string comment) //krkr
		{

			
			if (!News.comments.ContainsKey(news_id))
			{
				News.comments.Add(news_id, new List<(string, string)>());
			}


			
			News.comments[news_id].Add((username, comment));

		}
        public bool forget_password(string email, string phone_number, string new_pass) //abdo
        {
            
            
            
                for (int i = 0; i < map_of_person.Count; i++)
                {
                    var person = map_of_person.ElementAt(i);
                    var username = person.Key;
                    var person_phone = map_of_person[username].get_phoneno();
                    var person_email = map_of_person[username].get_email();
                    if ((person_email.Equals(email)) && (person_phone.Equals(phone_number)))
                    {
                        map_of_person[username].set_password(new_pass);
                        return true;
                    }
                }
            
            return false;
        }

        public void change_mail(String username, String new_mail) //krkr
		{
            if (map_of_person.ContainsKey(username.ToLower()))
            {
                map_of_person[username.ToLower()].set_email(new_mail);
            }

		}

        public void change_image(string username,BitmapImage image) //samy
        {
            if (map_of_person.ContainsKey(username.ToLower()))
            {
                map_of_person[username.ToLower()].set_photo(imagetoByte(image));
            }

        }
        public void ChangeUserName(string userName, string nw_userName) //ammar
        {


            Person tmp = map_of_person[userName.ToLower()];
            tmp.set_user_name(nw_userName.ToLower());
            map_of_person.Remove(userName.ToLower());

            map_of_person[nw_userName.ToLower()] = tmp;

          //  persons_data[idx].set_user_name(nw_userName);
            if (News.spam.ContainsKey(userName))
            {


                if (News.spam[userName].Count != 0)
                {
                    News.spam[nw_userName] = News.spam[userName];
                    News.spam.Remove(userName);
                }

            }

            foreach (KeyValuePair<int, List<(string, string)>> comment in News.comments)
            {
                for (int i = 0; i < comment.Value.Count; i++)
                {
                    if (comment.Value[i].Item1 == userName)
                    {
                        comment.Value[i] = (nw_userName, comment.Value[i].Item2);
                    }
                }
            }
        }



    }
}
