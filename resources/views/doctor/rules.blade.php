@extends('doctor.layout')
@section('title','All Case Studies')
@section('content')
<!-- Header -->
<header class="bg-primary text-white text-center py-3">
  <div class="container">
      <h1 class="display-4">Rules</h1>
      <p class="lead">Rules & Guidelines for the Teaching Electronic Medical Records Application.</p>
  </div>
</header>

<!-- Content Section -->
<section class="py-3">
  <div class="container">
      <div class="row">
          <div class="col-md-12">
              <p>Welcome to the interactive world of MedSchool+! Before you embark on your journey, it's essential to 
                familiarize yourself with the following rules and guidelines to ensure a smooth and educational 
                experience</p>
          </div>
      </div>
  </div>
</section>

<section class="py-3">
  <div class="container">
      
      <div class="row">
        <div class="col-md-12">
            <p><strong>1. Starting a Case :</strong> Each clinical case begins with a detailed patient history. Read this carefully, as it 
              provides crucial information that can guide your decisions throughout the case.</p>
            <p><strong>2. Decision-making :</strong> After reviewing the patient history, you have complete autonomy over your 
              actions. Your decisions will directly influence the course of the patient's care.</p>

            <p class="px-3"><strong>a. Ordering Tests</strong> Choose wisely and consider the relevance of each test to the presenting 
              symptoms and patient history.</p>
            <p  class="px-3"><strong>b. Performing Procedures</strong> Only undertake procedures when necessary and ensure you are 
              confident in your decision.</p>
            <p class="px-3"><strong>c. Diagnosis & Treatment</strong> Arrive at a diagnosis based on the evidence at hand and select 
              the most appropriate treatment.</p>   

            <p><strong>3. Scoring :</strong></p>
            <p class="px-3"><strong>a. Earning Points</strong> For each correct action or decision made during the case, you'll earn 
              points. These points reflect the accuracy and efficiency of your clinical reasoning.</p>
            <p class="px-3"><strong>b. Using Hints</strong> Should you find yourself unsure about the next step, hints are available to 
              guide you. However, remember that using a hint will result in a deduction of points from 
              your case score. Use them sparingly and strategically.</p>
            
            <p><strong>4. Ending a Case :</strong>If you believe you've taken all necessary actions for the patient, or if you wish to 
              conclude your case, select the "End Case" button. Once done, you cannot return to that specific 
              case scenario</p>

            <p><strong>5. Feedback :</strong>  After ending a case, you will receive comprehensive feedback on your performance. 
              This includes:</p>

            <p class="px-3"><strong>a.</strong> A breakdown of your decisions.</p>
            <p class="px-3"><strong>b.</strong> Points earned or lost.</p>
            <p class="px-3"><strong>c.</strong> Recommendations for improvement and areas of strength
 .</p>
            <p class="px-3"><strong>d.</strong> This feedback is crucial for your learning journey, so take the time to review and reflect 
              on it.</p>
            
            <p><strong>6. Integrity:</strong>  While collaboration and discussion are encouraged outside the platform, during the 
              case, ensure your decisions are your own. This will provide a genuine learning experience and an 
              accurate reflection of your clinical reasoning skills.</p>

              <p><strong>6. Respect & Professionalism:</strong>  Approach each case with the same respect and professionalism you 
                would offer to a real patient. Even though these are simulations, they represent real-world 
                scenarios that require earnest attention and care.</p>

                <p>Remember, MedSchool+ is designed to enhance your learning, sharpen your clinical skills, and prepare 
                  you for real-world medical scenarios. Embrace each case as an opportunity to grow and become a more 
                  proficient medical professional.
                  .</p>
                <p>Good luck, and may your decisions lead to the best outcomes!</p>
        </div>
    </div>
  </div>
</section>

@endsection