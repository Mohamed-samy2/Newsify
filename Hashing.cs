using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Newsify
{
   public class Hashing : PreHash
    {
        public int[] Hash;
        public Hashing(string s)
        {
            int n = s.Length;

            Hash = new int[n];


            s = s.ToLower();

            for (int i = 0; i < n; i++)
            {
                Hash[i] = (int)mul((int)s[i], pw1[i]);

                if (i > 0)
                {
                    Hash[i] = (int)add(Hash[i], Hash[i - 1]);
                }
            }
        }

        public int GetAns(int l, int r)
        {
            if (l > 0)
            {
                return (
                    (int)mul(inv1[l], add(Hash[r], -Hash[l - 1]))
                );
            }
            else
            {
                return (
                    (int)mul(inv1[l], add(Hash[r], 0))
                );
            }
        }


    }
}
