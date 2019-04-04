# -*- coding: utf-8 -*-
{
    'name': "myconferences",

    'summary': """
        My Conference is an applucation to ease the management of conferences
	you can manage registeration of guests as well as resources...""",

    'description': """
        If you have the time to write a long description, please do !
    """,

    'author': "ERPish.com",
    'website': "http://www.erpish.com",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/master/odoo/addons/base/module/module_data.xml
    # for the full list
    'category': 'Uncategorized',
    'version': '0.2',

    # any module necessary for this one to work correctly
    'depends': ['base'],

    # always loaded
    'data': [
        'views/mymenu.xml',
        'views/mainpage.xml',
    ],
    'application': True,   
}
