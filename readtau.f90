subroutine readtau()
  implicit none
  integer(4) :: i
  real(8) tau1(3), tau2(3), tau3(3) ! lattice vectors
  real(8) a ! lattice constant
  open(25, file='tau.dat', status='old', action='read')
  read(25,*) a
  read(25,*) (tau1(i), i=1,3)
  read(25,*) (tau2(i), i=1,3)
  read(25,*) (tau3(i), i=1,3)
  close(25)
  tau1=a*tau1
  tau2=a*tau2
  tau3=a*tau3
end subroutine readtau

