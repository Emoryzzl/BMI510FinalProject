This R package is for my BMI510 final project

Function Implementations:
1.logLikBernoulli: This function calculates the probability 𝑝 that maximizes the log-likelihood for a given vector of binary data.

2.survCurv: This function calculates and plots a survival curve 𝑆(𝑡) using the survival package.

3.unscale: This function reverses the scaling effect applied to a numeric vector.

4.pcApprox: This function returns an approximation to a dataset based on a given number of principal components.

5.standardizeNames: This function standardizes the variable names of a dataset using 'dplyr::rename_with' and 'janitor::make_clean_names'.

6.minimumN: This function uses 'pwr::pwr.t2n.test' to determine the minimum sample size needed for a t-test.

7.downloadRedcapReport: This function securely downloads a RedCap report using an API token from the user's '.REnviron' file.