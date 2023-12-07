<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
    <style>
        fieldset {
            border: 1px solid palevioletred;
        }

    </style>
</head>
<body>
<h1>Simple Calculator
</h1>
<form action="/calculate" method="get">
    <fieldset>
        <legend>Calculator</legend>
    <table>
        <tr>
            <td>First operand</td>
            <td>Operator</td>
            <td>Second operand</td>
        </tr>
        <tr>
            <td>
                <label>
                    <input type="text" name="firstOperand">
                </label>
            </td>
            <td>
                <label>
                    <select name="operator">
                        <option value="add">Addition</option>
                        <option value="sub">Subtraction</option>
                        <option value="multi">Multiple</option>
                        <option value="div">Division</option>
                    </select>
                </label>
            </td>
            <td>
                <label>
                    <input type="text" name="secondOperand">
                </label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="Calculate">
            </td>
        </tr>
    </table>
    </fieldset>
</form>
</body>
</html>