import os
import pytest
import re
    
def test_sql_1_sql():
  result = os.popen(f'sqlite3 pokedex.db < 1.sql | md5sum').read()
  expected = os.popen(f'cat tests/1.sql.md5').read()
  assert result == expected

    
def test_sql_2_sql():
  result = os.popen(f'sqlite3 pokedex.db < 2.sql | md5sum').read()
  expected = os.popen(f'cat tests/2.sql.md5').read()
  assert result == expected

    
def test_sql_3_sql():
  result = os.popen(f'sqlite3 pokedex.db < 3.sql | md5sum').read()
  expected = os.popen(f'cat tests/3.sql.md5').read()
  assert result == expected

    
def test_sql_4_sql():
  result = os.popen(f'sqlite3 pokedex.db < 4.sql | md5sum').read()
  expected = os.popen(f'cat tests/4.sql.md5').read()
  assert result == expected

    
def test_sql_5_sql():
  result = os.popen(f'sqlite3 pokedex.db < 5.sql | md5sum').read()
  expected = os.popen(f'cat tests/5.sql.md5').read()
  assert result == expected

    
def test_sql_6_sql():
  result = os.popen(f'sqlite3 pokedex.db < 6.sql | md5sum').read()
  expected = os.popen(f'cat tests/6.sql.md5').read()
  assert result == expected

    
def test_sql_7_sql():
  result = os.popen(f'sqlite3 pokedex.db < 7.sql | md5sum').read()
  expected = os.popen(f'cat tests/7.sql.md5').read()
  assert result == expected

