# ****************************************************************************************
#  Copyright (c) 2021. Wojciech Wrona                                                    *
# ****************************************************************************************
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.ext.hybrid import hybrid_property

Base = declarative_base()


class User(Base):
    __tablename__ = 'users'
    id = Column('id', Integer, primary_key=True, nullable=False, autoincrement=True)
    first_name = Column('first_name', String(128), nullable=False)
    last_name = Column('last_name', String(128), nullable=False)
    address_id = Column('address_id', Integer, ForeignKey('addresses.id', ondelete='CASCADE'), nullable=False)
    address = relationship('Address', lazy='subquery')

    @hybrid_property
    def name(self):
        return self.first_name + ' ' + self.last_name

    def __repr__(self):
        return str(self.id) + '. ' + self.first_name + ' ' + self.last_name\
               + '; ' + self.address.address + ', ' + self.address.city


class Address(Base):
    __tablename__ = 'addresses'
    id = Column('id', Integer, primary_key=True, nullable=False, autoincrement=True)
    address = Column('address', String(512), nullable=False)
    city = Column('city', String(64), nullable=False)

    def __repr__(self):
        return self.address + ' ' + self.city

