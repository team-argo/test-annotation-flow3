# Filename: healthcare_services_contact_page.feature
@regression @services-page
Feature: Healthcare Services Support and Contact Page
  As a potential patient or user of the website
  I want to navigate to the Services page, find key information, and contact support
  So that I can efficiently manage my healthcare needs.

  Background:
    Given the user is on the homepage

  @navigation @smoke
  Scenario: User navigates to the Services page from the header
    When the user clicks on the "Services" link in the header
    Then the user should be navigated to the "/services" page

  @ui @hero-section
  Scenario: User views the hero section content
    Given the user is on the Services page
    When the user views the hero section at the top of the page
    Then the user should see the heading "We're Here to Support Your Health Journey"
    And the user should see an accompanying hero illustration

  @ui @cta-button
  Scenario: User uses the hero call-to-action button to navigate to the contact form
    Given the user is on the Services page
    When the user clicks the "Let's connect" button in the hero section
    Then the page should scroll down to the "Let's Connect!" contact form section

  @ui @faq
  Scenario: User expands an FAQ item to see the answer
    Given the user is viewing the FAQ section on the Services page
    When the user clicks on the question "Do you offer telemedicine or virtual visits?"
    Then the corresponding answer section expands and becomes visible
    And the answer contains the text "Yes, we offer virtual consultations for a variety of needs."

  @forms @contact-us
  Scenario Outline: User successfully submits the contact form with valid information
    Given the user is at the "Let's Connect!" contact form
    When the user enters "<firstName>" into the "First Name" field
    And the user enters "<lastName>" into the "Last Name" field
    And the user selects "<gender>" from the "Gender" dropdown
    And the user clicks the "Submit" button
    Then the user should see a "Thank you for your submission!" confirmation message

    Examples:
      | firstName | lastName | gender   |
      | "Jane"    | "Doe"    | "Female" |
      | "John"    | "Smith"  | "Male"   |
      | "Alex"    | "Jones"  | "Other"  |

  @ui @footer
  Scenario: User finds office hours in the website footer
    Given the user has scrolled to the footer of the page
    When the user looks at the first column of the footer
    Then the user can find the "Hours" of operation
    And the hours are listed as "Mon - Fri: 9am - 5pm"