# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from db.util import SQLUtil
from abc import ABC, abstractmethod


class DB(ABC):

    def __init__(self):
        self.util = SQLUtil()

    @abstractmethod
    def get_all(self):
        pass

    @abstractmethod
    def get_query(self):
        pass

    @abstractmethod
    def add_entity(self):
        pass

    @abstractmethod
    def get(self, id_sel):
        pass

    @abstractmethod
    def update_entity(self, ids):
        pass

    @abstractmethod
    def delete_id(self, e_id):
        pass

