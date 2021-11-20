subroutine linspace(a, b, n, c)
  implicit none
  real(8) a ! starting point
  real(8) b ! end points
! |a|a+h| a+2h| ..... a+(n-1)h| b|
  integer(4) i, n ! numbers of steps inbetween
  real(8) :: c(n+1) ! c is an output array of length n+1
  real(8) h ! step size
  h = abs(b-a)/dble(n)
  do i=1, n+1
    c(i) = a + h*dble(i-1)
  end do
  
end subroutine linspace

  
