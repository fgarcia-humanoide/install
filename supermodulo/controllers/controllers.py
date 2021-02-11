# -*- coding: utf-8 -*-
from odoo import http

# class /opt/odoo/supermodulo(http.Controller):
#     @http.route('//opt/odoo/supermodulo//opt/odoo/supermodulo/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('//opt/odoo/supermodulo//opt/odoo/supermodulo/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('/opt/odoo/supermodulo.listing', {
#             'root': '//opt/odoo/supermodulo//opt/odoo/supermodulo',
#             'objects': http.request.env['/opt/odoo/supermodulo./opt/odoo/supermodulo'].search([]),
#         })

#     @http.route('//opt/odoo/supermodulo//opt/odoo/supermodulo/objects/<model("/opt/odoo/supermodulo./opt/odoo/supermodulo"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('/opt/odoo/supermodulo.object', {
#             'object': obj
#         })