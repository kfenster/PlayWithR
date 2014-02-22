And a bunch of ML course websites that might have useful/liftable material

* http://cs229.stanford.edu/
* http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-867-machine-learning-fall-2006/
* http://work.caltech.edu/telecourse.html
* http://openclassroom.stanford.edu/MainFolder/CoursePage.php?course=MachineLearning

= Reviewing Stanfords cs229, things I'd want to cover. =

I'd probably cover all of the supervised learning section. 
Might skip the learning theory
Unsupervised Learning
Skip reinforcement learning an control

The problem sets appear unavailable

Lecture Notes 1 http://cs229.stanford.edu/notes/cs229-notes1.pdf

Good overviews or prerequisites:
    - linear algebra: http://cs229.stanford.edu/section/cs229-linalg.pdf
    - probability: http://cs229.stanford.edu/section/cs229-prob.pdf

Practical guidance:
    - debugging learning algorithms: http://cs229.stanford.edu/materials/ML-advice.pdf
        - me: This seems like really useful stuff to dive into, and rare to find. 


- Part 1
    - Introduction to notation
    - linear regression for introducing
        - loss/cost function # don't think the calls out 'this is function approximation' strongly enough
        - solutions via gradient descent
        - thinking in terms of matrices/normal equations
        - probabilistic connection to justifying this

    - 1D regression with additional terms
        - feature selection
            - glosses over 'additional features' but I'd call that out. It says 'as discussed previously. Don't know where exactly'.
        - underfitting, overfitting
    - locally weighted least squares
        - windowing

    - parametric vs. non-parametric learning algorithm
        - fixed O(1) parameters vs O(n) parameters
- Part 2
    - Logistic Regression
        - elements of statistical learning has good example of linear regression performing poorly on 0/1 data
        - introduce sigmoid/logistic function
        - why this function vs. others? (postponed discussion for GLM, generative)
        - probabalistic interpretation, solved via maximum likelihood
            - introduce log likelihood as useful trick
        - solution methods: Newton-Raphson (Fisher scoring)
    - historical digression: perceptron
        - useful to make 'neural net' not seem like magic.
- Part 3 : Generalized Linear Models
    - this part seems poorly motivated. Jumps right into the deep end
    - deriving the previous methods as examples of GLMs

Lecture Notes 2

- Part 4
    - Discriminative vs. Generative models
        - Bayes Rule
        - Gaussian Discriminant analysis
            - relationship to logistic regression
        - Naive Bayes
            - simplifying assumptions (vis conditional independence relationships)
            - discretization of continuous features
            - Laplace smoothing
            - multi-variate Bernoulli event model - vocab + good description of generative picture
            - multinomial event model
                - TODO: good to work through the math of this vs. bernoulli explicitly

       - me: note that the bernoulli model is probably unlikely to generate realistic vectors. Namely, it probably generates too many words. Why isn't that a problem? 


