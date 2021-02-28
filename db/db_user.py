# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from db.db import DB
from db.orm import User


class DBUser(DB):

    def __init__(self, user=User.__class__):
        super().__init__()
        self.user = user

    def get_all(self):
        try:
            return self.util.get_session().query(User).all()
        except Exception:
            self.util.session_rollback()
            raise Exception

    def get_query(self):
        try:
            return self.util.get_session().query(User)
        except Exception:
            self.util.session_rollback()
            raise Exception

    def get(self, id_sel):
        try:
            return self.util.get_session().query(User).get(id_sel)
        except Exception:
            self.util.session_rollback()
            raise Exception

    def update_entity(self, ids):
        try:
            sel = self.util.get_session().query(User).get(ids)
            sel.first_name = self.user.first_name
            sel.last_name = self.user.last_name
            sel.address = self.user.address
            self.util.get_session().commit()
        except Exception:
            self.util.session_rollback()
            raise Exception

    def add_entity(self):
        try:
            self.util.get_session().add(self.user)
            self.util.get_session().commit()
            return True
        except :
            self.util.session_rollback()
            raise

    def delete_id(self, e_id):
        try:
            a = self.util.get_session().query(User).get(e_id)
            self.util.get_session().delete(a)
            self.util.get_session().commit()
        except Exception:
            self.util.session_rollback()
            raise Exception
