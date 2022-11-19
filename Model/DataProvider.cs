﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLICAPHE.Model
{
    internal class DataProvider
    {
        private static DataProvider _ins;
        public static DataProvider Ins
        {
            get
            {

                if (_ins == null)
                    _ins = new DataProvider();
                return _ins;
            }
            set
            {
                _ins = value;
            }
        }
        public QUANLICAPHEntities DB { get; set; }
        public DataProvider()
        {
            DB = new QUANLICAPHEntities();
        }

        public List<BAN> LoadTableList()
        {

            List<BAN> listban = new List<BAN>();

            listban = DB.BANs.ToList();

            return listban;
        }
    }
}

