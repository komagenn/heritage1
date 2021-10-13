class Register < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1978' },
    { id: 3, name: '1980' },
    { id: 4, name: '1981' },
    { id: 5, name: '1982' },
    { id: 6, name: '1983' },
    { id: 7, name: '1984' },
    { id: 8, name: '1985' },
    { id: 9, name: '1986' },
    { id: 10, name: '1987' },
    { id: 11, name: '1988' },
    { id: 12, name: '1990' },
    { id: 13, name: '1991' },
    { id: 14, name: '1992' },
    { id: 15, name: '1993' },
    { id: 16, name: '1994' },
    { id: 17, name: '1995' },
    { id: 18, name: '1997' },
    { id: 19, name: '1998' },
    { id: 20, name: '1999' },
    { id: 21, name: '2000' },
    { id: 22, name: '2001' },
    { id: 23, name: '2002' },
    { id: 24, name: '2003' },
    { id: 25, name: '2005' },
    { id: 26, name: '2006' },
    { id: 27, name: '2009' },
    { id: 28, name: '2010' },
    { id: 29, name: '2011' },
    { id: 30, name: '2012' },
    { id: 31, name: '2014' },
    { id: 32, name: '2015' },
    { id: 33, name: '2016' },
    { id: 34, name: '2017' },
    { id: 35, name: '2018' },
    { id: 36, name: '2019' },
    { id: 37, name: '2021' }
  ]

    include ActiveHash::Associations
    has_many :heritages
  end