@extends('doctor.layout')
@section('title','All Case Studies')
@section('content')
<!-- Header -->
<header class="bg-primary text-white text-center py-3">
  <div class="container">
      <h1 class="display-4">About Us</h1>
      <p class="lead">Empowering Tomorrow's Medical Professionals.</p>
  </div>
</header>

<!-- Content Section -->
<section class="py-3">
  <div class="container">
      <div class="row">
          <div class="col-md-12">
              <p>Developed and Designed by Sameer Makotia of University of Idaho Drs. Tyler Bland and Derrick Phillips 
                at the University of Idaho WWAMI Medical Education Program, produced this idea of Teaching Electronic 
                Medical Record (tEMR) application which is a cutting-edge educational tool designed to bridge the gap 
                between theoretical knowledge and real-world clinical practice..</p>
          </div>
      </div>
  </div>
</section>

<section class="py-3">
  <div class="container">
      <div class="row">
          <div class="col-md-12">
              <h4>Key Features :</h4>
          </div>
      </div>
      <div class="row">
        <div class="col-md-12">
            <p><strong>1. Interactive Clinical Cases :</strong>Immerse yourself in meticulously crafted clinical scenarios that mirror 
              real-life situations. Learn the nuances of patient care, from initial consultations to complex 
              diagnoses and treatments.</p>
            <p><strong>2. Hands-on Experience :</strong>Order tests, perform procedures, diagnose, and treat virtual patients. 
              Every decision you make impacts the course of patient care, providing a tangible sense of the 
              responsibilities that come with being a medical professional.</p>
            <p><strong>3. Solo or Group Learning :</strong>Whether you're an independent learner or thrive in a team setting, our 
              platform caters to both. Engage in cases individually or collaborate in groups to discuss, debate, 
              and decide the best course of action for your patients.</p>
            <p><strong>4. Feedback & Reflection :</strong> Upon the completion of each case, receive feedback on your decisions. 
              Understand where you excelled and areas that need further refinement. This iterative learning 
              process ensures continuous improvement and growth.</p>
        </div>
    </div>
  </div>
</section>
<section class="py-3">

  <div class="container">
    <div class="row">
      <div class="col-md-12">
          <h4>Team:</h4>
      </div>
    </div>
    <div class="row">
      <div class="col-sm">
        <div class="card">
          <img class="card-img-top" src="{{ asset('images/dr_phillip.jpeg') }}" alt="Card image cap">
          <div class="card-body">
            <a target="_blank" href="https://www.uidaho.edu/academics/wwami/our-people/faculty/phillips"><h5 class="card-title">Dr. Derrick Philips, Ph.D. Clinical Assistant Professor University Of Idaho</h5></a>
          </div>
        </div>
      </div>
      <div class="col-sm">
        <div class="card">
          <img class="card-img-top" src="{{ asset('images/dr_sameer.jpeg') }}" alt="Card image cap">
          <div class="card-body">
            <a target="_blank" href="https://www.linkedin.com/in/sameermankotia/"><h5 class="card-title">Sameer Mankotia Developer University Of Idaho </h5></a>
          </div>
        </div>
      </div>
      <div class="col-sm">
        <div class="card">
          <img class="card-img-top" src="{{ asset('images/dr_tylor.jpeg') }}" alt="Card image cap">
          <div class="card-body">
            <a target="_blank" href="https://www.uidaho.edu/academics/wwami/our-people/faculty/bland"><h5 class="card-title">Tyler Bland, Ph.D. Clinical Assistant Professor University Of Idaho</h5></a>
          </div>
        </div>
      </div>
      <div class="col-sm">
        <div class="card">
          <img class="card-img-top" src="{{ asset('images/dr_jamil.jpeg') }}" alt="Card image cap">
          <div class="card-body">
            <a target="_blank" href="https://www.uidaho.edu/engr/departments/cs/our-people/faculty/hasan-jamil"><h5 class="card-title">Hasan Jamil, Ph.D. Associate Professor University Of Idaho</h5></a>
          </div>
        </div>
      </div>
    </div>
  </div>

</section>
<!-- Content Section -->
<section class="py-3">
  <div class="container">
      <div class="row">
          <div class="col-md-12">
            <h4>Our Vision:</h4>
              <p>In today's fast-evolving medical landscape, the importance of hands-on experience and practical 
                knowledge cannot be overstated. With this Teaching EMR application, we aim to provide medical 
                students with an environment where they can apply their theoretical knowledge, make critical decisions, 
                and witness the outcomes of their actions—all in a risk-free setting.</p>
                <p>By simulating the challenges and pressures of a real-world clinical environment, we hope to better 
                  prepare our students for the realities of patient care, equipping them with the skills, confidence, and 
                  empathy needed to excel in their future careers.</p>
                <p>Join us on this journey to redefine medical education, one case at a time.
                </p>
          </div>
      </div>
  </div>
</section>

@endsection