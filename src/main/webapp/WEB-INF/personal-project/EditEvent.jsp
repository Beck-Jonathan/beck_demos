<%--************
Create the JSP For Viuw/Edit from the Event table
 Created By Jonathan Beck 3/17/2023, revised3/23/2024
**********--%>
<%@include file="/WEB-INF/personal-project/personal_top.jsp"%>
<div class = "container">
    <form method="post" action="${appURL}/editevent" id = "editEvent" >
        <!-- Event_ID -->
        <div class ="row" id = "row0">
            <h2>Event_ID  :
                ${event.event_ID}</h2>
        </div>
        <!-- Facility_ID -->
        <div class ="row" id = "row1">
            <label for="inputeventFacility_ID" class="form-label">Facility_ID</label>
            <div class="input-group input-group-lg">
                <select  class="<c:if test="${not empty results.eventFacility_IDerror}">is-invalid</c:if> form-control border-0 bg-light rounded-end ps-1"  <c:if test="${mode eq 'view'}"> disabled </c:if>  id="inputeventFacility_ID" name="inputeventFacility_ID" value="${event.facility_ID}">
                    <c:forEach items="${Facilitys}" var="Facility">
                        <option value="${Facility.facility_ID}"<c:if test="${event.facility_ID eq Facility.facility_ID}"> selected </c:if>>${Facility.name}   </option>
                    </c:forEach>
                </select>
                <c:if test="${not empty results.eventFacility_IDerror}">
                    <div class="invalid-feedback">${results.eventFacility_IDerror}</div>
                </c:if>
            </div>
        </div>
        <!-- Date -->
        <div class ="row" id = "row2">
            <label for="inputeventDate" class="form-label">Date</label>
            <div class="input-group input-group-lg">
                <input type="date" class="<c:if test="${not empty results.eventDateerror}">is-invalid</c:if> form-control border-0 bg-light rounded-end ps-1" placeholder="Date" <c:if test="${mode eq 'view'}"> disabled </c:if>  id="inputeventDate" name="inputeventDate" value="${event.date}">
                <c:if test="${not empty results.eventDateerror}">
                    <div class="invalid-feedback">${results.eventDateerror}</div>
                </c:if>
            </div>
        </div>
        <!-- Type_ID -->
        <div class ="row" id = "row3">
            <label for="inputeventType_ID" class="form-label">Type_ID</label>
            <div class="input-group input-group-lg">
                <select  class="<c:if test="${not empty results.eventType_IDerror}">is-invalid</c:if> form-control border-0 bg-light rounded-end ps-1"  <c:if test="${mode eq 'view'}"> disabled </c:if>  id="inputeventType_ID" name="inputeventType_ID" value="${event.type_ID}">
                    <c:forEach items="${Types}" var="Type">
                        <option value="${Type.type_ID}"<c:if test="${event.type_ID eq Type.type_ID}"> selected </c:if>>${Type.name}   </option>
                    </c:forEach>
                </select>
                <c:if test="${not empty results.eventType_IDerror}">
                    <div class="invalid-feedback">${results.eventType_IDerror}</div>
                </c:if>
            </div>
        </div>
        <div class="align-items-center mt-0">
            <div class="d-grid"><button class="btn btn-orange mb-0" type="submit">Sign Up</button></div>
            <c:if test="${not empty results.dbStatus}"
            ><p>${results.dbStatus}</p>
            </c:if>
        </div>
    </form>
</div>
<%@include file="/WEB-INF/personal-project/personal_bottom.jsp"%>

