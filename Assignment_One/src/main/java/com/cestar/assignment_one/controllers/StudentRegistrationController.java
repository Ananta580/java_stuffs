package com.cestar.assignment_one.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet to handle student registration form submissions.
 *
 * Retrieves submitted data and displays it in a styled HTML format.
 */
@WebServlet("/StudentRegistrationController")
public class StudentRegistrationController extends HttpServlet {

    /**
     * Processes HTTP POST requests for student registration.
     *
     * @param request  The HttpServletRequest containing form data.
     * @param response The HttpServletResponse to send back the registration info.
     * @throws ServletException if an error occurs during processing.
     * @throws IOException      if an input/output error occurs.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String date = request.getParameter("date");
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");
        String country = request.getParameter("country");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String membership = request.getParameter("membership");
        String course = request.getParameter("course");
        String payment = request.getParameter("payment");
        String comments = request.getParameter("comments");
        String signature = request.getParameter("signature");
        String validatedBy = request.getParameter("validatedBy");

        // Generate HTML response with Tailwind CSS styling
        out.println("<html><head>");
        out.println("<link href='https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css' rel='stylesheet'>");
        out.println("<title>Student Registration Information | Ananta Poudel - C0913139</title>");
        out.println("</head><body class='bg-gray-50 p-8'>");

        out.println("<div class='max-w-4xl mx-auto bg-white p-6 rounded-lg shadow-lg'>");
        out.println("<h1 class='text-3xl font-bold text-center mb-6 text-indigo-600'>Registration Information</h1>");

        // Greeting message
        out.println("<h2 class='text-2xl font-semibold text-center mb-4'>Welcome, " + name + "!</h2>");
        out.println("<p class='text-center mb-6'>Thank you for registering. Here is your information:</p>");

        // Display registration data
        out.println("<div class='mb-4'><p class='text-lg'><strong>Date:</strong> " + date + "</p></div>");
        out.println("<div class='grid grid-cols-1 md:grid-cols-2 gap-4 mb-6'>");
        out.println("<div><p class='text-lg'><strong>Name:</strong> " + name + "</p></div>");
        out.println("<div><p class='text-lg'><strong>Date of Birth:</strong> " + dob + "</p></div>");
        out.println("</div>");
        out.println("<div class='grid grid-cols-1 md:grid-cols-2 gap-4 mb-6'>");
        out.println("<div><p class='text-lg'><strong>Address:</strong> " + address + "</p></div>");
        out.println("<div><p class='text-lg'><strong>City:</strong> " + city + "</p></div>");
        out.println("</div>");
        out.println("<div class='grid grid-cols-1 md:grid-cols-2 gap-4 mb-6'>");
        out.println("<div><p class='text-lg'><strong>State:</strong> " + state + "</p></div>");
        out.println("<div><p class='text-lg'><strong>Zip:</strong> " + zip + "</p></div>");
        out.println("</div>");
        out.println("<div class='grid grid-cols-1 md:grid-cols-2 gap-4 mb-6'>");
        out.println("<div><p class='text-lg'><strong>Country:</strong> " + country + "</p></div>");
        out.println("<div><p class='text-lg'><strong>Phone:</strong> " + phone + "</p></div>");
        out.println("</div>");
        out.println("<div class='mb-6'><p class='text-lg'><strong>Email:</strong> " + email + "</p></div>");
        out.println("<div class='mb-6'><p class='text-lg'><strong>Membership Type:</strong> " + membership + "</p></div>");
        out.println("<div class='mb-6'><p class='text-lg'><strong>Course Name:</strong> " + course + "</p></div>");
        out.println("<div class='mb-6'><p class='text-lg'><strong>Payment Method:</strong> " + payment + "</p></div>");
        out.println("<div class='mb-6'><p class='text-lg'><strong>Comments:</strong> " + comments + "</p></div>");
        out.println("<div class='grid grid-cols-1 md:grid-cols-2 gap-4 mb-6'>");
        out.println("<div><p class='text-lg'><strong>Student's Signature:</strong> " + signature + "</p></div>");
        out.println("<div><p class='text-lg'><strong>Validated By:</strong> " + validatedBy + "</p></div>");
        out.println("</div>");

        out.println("<div class='text-center mt-8'>");
        out.println("<a href='index.jsp' class='text-indigo-600 underline'>Back to Registration</a>");
        out.println("</div>");

        out.println("</div>");
        out.println("</body></html>");
    }
}
