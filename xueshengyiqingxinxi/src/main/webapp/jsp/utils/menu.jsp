<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"教师管理",
			            "menuJump":"列表",
			            "tableName":"jiaoshi"
			        }
			    ],
			    "menu":"教师管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"学生管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"学生管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "审核",
			                "删除"
			            ],
			            "menu":"请假信息管理",
			            "menuJump":"列表",
			            "tableName":"qingjiajilu"
			        }
			    ],
			    "menu":"请假信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"体温汇报管理",
			            "menuJump":"列表",
			            "tableName":"tiwenhuibao"
			        }
			    ],
			    "menu":"体温汇报管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryNews"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"学校管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryXuexiao"
                    }

                ],
                "menu":"基础数据管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "修改",
			                "删除"
			            ],
			            "menu":"留言信息管理",
			            "menuJump":"列表",
			            "tableName":"liuyanxinxi"
			        }
			    ],
			    "menu":"留言信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"公告管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告管理"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
	        {
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改"
			            ],
			            "menu":"请假信息管理",
			            "menuJump":"列表",
			            "tableName":"qingjiajilu"
			        }
			    ],
			    "menu":"请假信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改"
			            ],
			            "menu":"体温汇报管理",
			            "menuJump":"列表",
			            "tableName":"tiwenhuibao"
			        }
			    ],
			    "menu":"体温汇报管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增"
			            ],
			            "menu":"留言信息管理",
			            "menuJump":"列表",
			            "tableName":"liuyanxinxi"
			        }
			    ],
			    "menu":"留言信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"公告管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告管理"
			}
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"学生",
	    "tableName":"yonghu"
	}
	,
	{
	    "backMenu":[
	        {
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "审核"
			            ],
			            "menu":"请假信息管理",
			            "menuJump":"列表",
			            "tableName":"qingjiajilu"
			        }
			    ],
			    "menu":"请假信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"体温汇报管理",
			            "menuJump":"列表",
			            "tableName":"tiwenhuibao"
			        }
			    ],
			    "menu":"体温汇报管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "修改"
			            ],
			            "menu":"留言信息管理",
			            "menuJump":"列表",
			            "tableName":"liuyanxinxi"
			        }
			    ],
			    "menu":"留言信息管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"公告管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"公告管理"
			}
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"教师",
	    "tableName":"jiaoshi"
	}
];

var hasMessage = '';
