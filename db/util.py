# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************

from sqlalchemy import engine
from sqlalchemy.orm import Session, sessionmaker
from sqlalchemy.engine import create_engine


class SQLUtil:
    __engine = engine
    __session = Session
    __connection = engine
    __transaction = engine

    def __init__(self):
        self.create_engine()
        self.open_session()

    # creates new engine for orm
    def create_engine(self):
        string = 'mysql+pymysql://root:@localhost:3306/seminar'
        self.__engine = create_engine(string)

    # return current engine for orm
    def get_engine(self):
        return self.__engine

    # creates new session for orm
    def open_session(self):
        session = sessionmaker()
        session.configure(bind=self.__engine)
        self.__session = session()

    def get_session(self):
        return self.__session

    def close_session(self):
        self.__session.close()

    def open_connection(self):
        self.__connection = self.get_engine().connect()

    def get_connection(self):
        return self.__connection

    def close_connection(self):
        return self.__connection.close()

    def transaction(self):
        self.__transaction = self.__connection.begin()

    def get_transaction(self):
        return self.__transaction

    def transaction_rollback(self):
        return self.__transaction.rollback()

    def session_rollback(self):
        return self.__session.rollback()

