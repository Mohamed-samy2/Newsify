using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Newsify
{
   public class PreHash
    {
        public const int N = 100000;
        const long M = 1000000007;
        const int P1 = 149;

        public static  int[] pw1 = new int[N];
        public  static int[] inv1 = new int[N];

        public long mul(long a, long b)
        {
            return ((a % M) * (b % M)) % M;
        }

        public long add(long a, long b)
        {
            return ((a % M) + (b % M) + M) % M;
        }

        public long fp(int baseNum, int power)
        {
            if (power == 0)
                return 1;

            long ret = fp(baseNum, power >> 1);

            ret = mul(ret, ret);

            if (power % 2 == 1)
            {
                ret = mul(ret, baseNum);
            }

            return ret;
        }
        public void Pre()
        {
            pw1[0] = inv1[0] = 1;

            long mulInv1 = fp(P1, (int)M - 2);

            for (int i = 1; i < N; i++)
            {
                pw1[i] = (int)mul(pw1[i - 1], P1);
                inv1[i] = (int)mul(inv1[i - 1], mulInv1);
            }
        }


    }
}
