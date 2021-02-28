# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from db.db import DB
from db.orm import Address


class DBAddress(DB):

    def __init__(self, address=Address.__class__):
        super().__init__()
        self.address = address

    def get_all(self):
        try:
            return self.util.get_session().query(Address).all()
        except Exception:
            self.util.session_rollback()
            raise Exception

    def get_query(self):
        try:
            return self.util.get_session().query(Address)
        except Exception:
            self.util.session_rollback()
            raise Exception

    def get(self, id_sel):
        try:
            return self.util.get_session().query(Address).get(id_sel)
        except Exception:
            self.util.session_rollback()
            raise Exception

    def update_entity(self, ids):
        try:
            sel = self.util.get_session().query(Address).get(ids)
            sel.address = self.address.address
            sel.city = self.address.city
            self.util.get_session().commit()
        except Exception:
            self.util.session_rollback()
            raise Exception

    def add_entity(self):
        try:
            self.util.get_session().add(self.address)
            self.util.get_session().commit()
            return True
        except Exception:
            self.util.session_rollback()
            raise Exception

    def delete_id(self, e_id):
        try:
            a = self.util.get_session().query(Address).get(e_id)
            self.util.get_session().delete(a)
            self.util.get_session().commit()
        except Exception:
            self.util.session_rollback()
            raise Exception
