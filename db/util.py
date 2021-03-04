# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************

from sqlalchemy import engine
from sqlalchemy.orm import Session, sessionmaker
from sqlalchemy.engine import create_engine


class SQLUtil:
    _engine = engine
    _session = Session
    _connection = engine
    _transaction = engine

    def __init__(self):
        self._create_engine()
        self._open_session()

    # creates new engine for orm
    def _create_engine(self):
        string = 'mysql+pymysql://root:@localhost:3306/seminar'
        self._engine = create_engine(string)

    # return current engine for orm
    def get_engine(self):
        return self._engine

    # creates new session for orm
    def _open_session(self):
        session = sessionmaker()
        session.configure(bind=self._engine)
        self._session = session()

    def get_session(self):
        return self._session

    def close_session(self):
        self._session.close()

    def open_connection(self):
        self._connection = self.get_engine().connect()

    def get_connection(self):
        return self._connection

    def close_connection(self):
        return self._connection.close()

    def transaction(self):
        self._transaction = self._connection.begin()

    def get_transaction(self):
        return self._transaction

    def transaction_rollback(self):
        return self._transaction.rollback()

    def session_rollback(self):
        return self._session.rollback()

