And a bunch of ML course websites that might have useful/liftable material

* http://cs229.stanford.edu/
* http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-867-machine-learning-fall-2006/
* http://work.caltech.edu/telecourse.html
* http://openclassroom.stanford.edu/MainFolder/CoursePage.php?course=MachineLearning
* http://see.stanford.edu/see/courseInfo.aspx?coll=348ca38a-3a6d-4052-937d-cb017338d7b1
* https://class.coursera.org/ml-003/lecture/preview (is this the same as open classroom lectures? No. there''s overlap but not the same)


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


Open classroom videos
    - introduction. Just motivating ML
    - What is Machine Learning
        - tom mitchell (1998) Well posed learning problem: A computer is said to learn from experience E with respect to some task T and some performance measure P, if its performance on T, as measured by P, improves with experience E.
        - introduce classes of problems: supervised learning vs. unsupervised learning
            - reinforcement learning, recommedner systems

    - Supervised learning introduction
        - house prices vs. square footage. 
            - modeling assumptions (linear vs. quadratic for instance)
            - classification vs. regression
        - breast cancer malignant/benign vs. tumor size, age.
            - classification (0/1)
            - lots of features, what to do. (infinite # of features) 

    Lecture 12: Linear Regression II: Feature Scaling
        - practical tips for improving gradient descent
            - gradient descent has trouble if features have very different scales. 
            - TODO: Example of convergence differences for poorly scaled vs. well scaled features + zero mean

Goal: 
    Practical: 
        Get us as quickly as possible to being able to experiment with these different algorithms
            - parsing datasets
            - algorithms: R, Python, Octave
        Debugging diagnostics
            - Andrew''s overview
    Concepts
         Vocabulary: Supervised/Unsupervised, Classification/Regression, Cost Function, 
         Objective functions and optimization algorithms 

Threads:
    Application papers from various fields
        - finance
        - computing
        - computational biology
    Setting up a lab environment -- shared set of tools
    Teaching/Coming up the curve

Found examples:
    http://quant.stackexchange.com/questions/111/how-can-i-go-about-applying-machine-learning-algorithms-to-stock-markets/113#113
        SVM based trading system: http://quantumfinancier.wordpress.com/2010/06/26/support-vector-machine-rsi-system/
        Survey of trading systems: http://blog.andersen.im/wp-content/uploads/2012/12/ANovelAlgorithmicTradingFramework.pdf

Somebody working through ESL and keeping a blog: http://www.statalgo.com/2011/01/29/esl-the-elements-of-statistical-learning/

A Few Usefule Things to Know about Machine Learning. Pedro Domingos. http://homes.cs.washington.edu/~pedrod/papers/cacm12.pdf

http://thunderboltlabs.com/blog/2013/11/09/getting-started-with-machine-learning/

http://jeffhuang.com/best_paper_awards.html

http://dl.acm.org/citation.cfm?id=2339576o

http://www.datarobot.com/blog/statistical-learning-in-python/

https://class.stanford.edu/courses/HumanitiesScience/StatLearning/Winter2014/about
