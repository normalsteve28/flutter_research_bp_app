'''Up next is to write our models. Flask provides developers with the power and flexibility of 
the SQL Alchemy ORM to manage and query the application data. ORM stands for Object Relational Mapper, 
it is a tool that allows developers to store and retrieve data using object oriented approaches and 
solves the object-relational impedance mismatch.

Also, Flask-SQLAlchemy is an extension that provides support for SQLAlchemy ORM in the Flask framework.
'''

from enum import unique
from flask import Flask
from marshmallow import Schema, fields, pre_load, validate
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy


ma = Marshmallow()
db = SQLAlchemy()


class Person(db.Model):
    #Puts table name in db called "users"
    __tablename__ = 'users'
    
    #table
    id = db.Column(db.Integer(), primary_key = True)
    api_key = db.Column(db.String(250), unique =True)
    username = db.Column(db.String(250))
  
    def __init__(self, username, api_key ):
        self.username = username
        self.api_key = api_key

    def __repr__(self):
        return '<id {}>'.format(self.id)
   
    def serialize(self):
        return {
        'id': self.id, 
        "username": self.username,
        "api_key": self.api_key,
        }



class History(db.Model):
    from datetime import datetime 
    #Puts table name in db called "history"
    __tablename__ = 'history'
    
    #table
    id = db.Column(db.Integer(), primary_key = True)
    person_id = db.Column(db.Integer, db.ForeignKey('person.id'))
    date_time = db.Column(db.DateTime(), nullable = False, default = datetime.utcnow())
    systolic_pressure = db.Column(db.Float())
    diastolic_pressure = db.Column(db.Float())
    heart_rate = db.Column(db.Float())
    

  
    def __init__(self,title,date_time, systolic_pressure, diastolic_pressure, person_id ):
        self.person_id = person_id
        self.date_time = date_time 
        self.systolic_pressure = systolic_pressure
        self.diastolic_pressure = diastolic_pressure
       

    def __repr__(self):
        return '<id {}>'.format(self.id)
   
    def serialize(self):
        return {
        "id": self.id,
        "person_id": self.person_id,
        "date_time": self.date_time,
        "systolic_pressure": self.systolic_pressure,
        "diastolic_pressure": self.diastolic_pressure,
        "heart_rate": self.heart_rate
        }

  
