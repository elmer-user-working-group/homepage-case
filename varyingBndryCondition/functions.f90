FUNCTION InFlow( Model, n, y ) RESULT( u )
  USE Types
  TYPE(Model_t) :: Model
  INTEGER :: n
  REAL(KIND=dp) :: y
  

  u =  1.5*2.0*4.0 / 0.1681 * y*(0.41-y)
  
END FUNCTION InFlow