import unittest
import datetime
from setting_up_ghost_in_azure.HelloService import HelloService

class TestHelloService(unittest.TestCase):

    @classmethod
    def setUpClass(self):
        self.helloService = HelloService()
        pass 
        
    def setUp(self):
        print(datetime.datetime.now())   

    def test_template(self):
        self.helloService.printHello()
        pass

if __name__ == '__main__':
    unittest.main()
