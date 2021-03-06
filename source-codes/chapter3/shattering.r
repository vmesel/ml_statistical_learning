epsilon = 0.1
n = 1:20000
N_F_2n_A1 = n^2
N_F_2n_A2 = n^4
N_F_2n_A3 = 2^n

Upper_bound_A1 = 2*N_F_2n_A1*exp(-n*epsilon^2/4)
Upper_bound_A2 = 2*N_F_2n_A2*exp(-n*epsilon^2/4)
Upper_bound_A3 = 2*N_F_2n_A3*exp(-n*epsilon^2/4)

par(mfrow=c(1,2))
plot(Upper_bound_A1, col=1, t="l", xlab="2 Samples with n examples each", ylab="Probability bound")
lines(Upper_bound_A2, col=2, )
lines(Upper_bound_A3, col=3)

plot(log(Upper_bound_A1), col=1, t="l", ylim=log(range(Upper_bound_A2)),
		     xlab="2 Samples with n examples each", ylab="Natural Logarithm of the Probability bound")
lines(log(Upper_bound_A2), col=2)
lines(log(Upper_bound_A3), col=3)

