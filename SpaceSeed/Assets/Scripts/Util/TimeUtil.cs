﻿using System;
using UnityEngine;
using System.Collections;

namespace SpaceTravel
{
    public class TimeUtil
    {
        public static readonly DateTime epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);

        public static DateTime FromUnixTime(long unixTime)
        {
            return epoch.AddSeconds(unixTime);
        }

        public static int MillisecondsElapse(long unixTime)
        {
            return (int)(DateTime.UtcNow - FromUnixTime(unixTime)).TotalMilliseconds;
        }

        public static int SecondsElapse(long unixTime)
        {
            return (int)(DateTime.UtcNow - FromUnixTime(unixTime)).TotalSeconds;
        }

        public static int MillisecondsLeft(long unixTime)
        {
            return (int)(FromUnixTime(unixTime) - DateTime.UtcNow).TotalMilliseconds;
        }

        public static int GetUnixTime()
        {
            return (int)(DateTime.UtcNow - epoch).TotalSeconds;
        }

        public static long GetUnixTimeMilliseconds()
        {
            return (long)(DateTime.UtcNow - epoch).TotalMilliseconds;
        }

    }
}

