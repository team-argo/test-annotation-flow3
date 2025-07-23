# language: en
@regression @website @patient-care
Feature: Compassionate, Patient-Centered Care Website

  As a potential patient or visitor,
  I want to navigate the website and understand the company's values, services, and strengths,
  so that I can feel confident in their patient-centered approach.

  Background:
    Given the user is on the homepage

  @smoke @navigation
  Scenario Outline: User can navigate to different pages using the main navigation bar
    When the user clicks on the "<Link>" link in the navigation bar
    Then the user is taken to the corresponding "<Page>" page

    Examples:
      | Link      | Page      |
      | "Home"    | "Home"    |
      | "About"   | "About"   |
      | "Services"| "Services"|
      | "Contact" | "Contact" |

  @smoke @homepage @hero
  Scenario: Visitor sees the main message of the website in the hero section
    Then the user should see a large hero image
    And the headline should be "Compassionate, Patient-Centered Care"
    And the sub-headline should be "Your health and comfort are our top priorities."

  @homepage @engagement
  Scenario: User learns about the service engagement model
    When the user scrolls to the "No Nonsense" section
    Then the user should see an image on the left
    And the user should see a blue-colored text block on the right detailing the engagement process
    And the user should see a "Let's Connect" button

  @homepage @strengths
  Scenario Outline: User views the company's key strengths
    When the user scrolls to the core strengths section
    Then the user should see a column with the title "<Strength>"
    And the "<Strength>" column should have a corresponding image and description

    Examples:
      | Strength                  |
      | "Innovation & Technology" |
      | "Experienced Medical Team"|
      | "Multiple Locations"      |

  @homepage @media @video
  Scenario: User plays the featured video
    When the user clicks the play button on the video thumbnail
    Then a video from the specified YouTube link starts playing

  @homepage @content @quote
  Scenario: User reads an inspirational quote
    When the user scrolls to the quote section
    Then the user should see the quote "Other people's successes are good news..."
    And the quote should have its attribution

  @homepage @highlights
  Scenario Outline: User explores the key highlights
    When the user scrolls to the "Key Highlights?" section
    Then the user should see a card with the title "<Highlight>"
    And the "<Highlight>" card should have a corresponding image and description

    Examples:
      | Highlight                   |
      | "Compassion is at the Core" |
      | "Patients are Partners"     |
      | "Innovation is Encouraged"  |
      | "Teamwork Drives Us"        |

  @homepage @content @story
  Scenario: User reads about the company's philosophy
    When the user scrolls to the "Your health. Your voice. Your life." section
    Then the user should see a text block on the left explaining the company's story
    And the user should see an illustrative image on the right

  @smoke @footer
  Scenario: User finds contact information and legal links in the footer
    Given the user is at the bottom of the page
    When the user views the footer
    Then the footer should contain the main office address
    And the footer should contain the contact email
    And the footer should contain social media links
    And the footer should contain a link to the "Privacy" page
    And the footer should contain a link to the "Terms" page