using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaTolusWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            resultImage.ImageUrl = "PapaTolu.png";
            specialDealLabel.Text = "Special Deal";
        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            // Declared a double variable named total
            double total = 0.0;

        // Checked with if() conditional statement if the user selected one out of the 3 radio buttons
        // On the default.aspx I set the radio button group name to SizeGroup, this gives access to only a selection
            if (babyToluRadioButton.Checked)
            {
                total = 10.0;
            }
            else if (MamaToluRadioButton.Checked)
                {
                total = 13.0;
                }
            else if (PapaToluRadioButton.Checked)
            {
                total = 16.0;
            }
            else
            {
                total = 0.00;
            }
            if (deepDishRadioButton.Checked)
            {
                total += 2.0; //total = total + 2.0;
            }
            /* Ternary operation instead of If() condition
             1 Identify the variable that will be modified (total in this case)
             2 Inside the parentheses, declare the condition to be evaluated (in this case, pepperoniCheckBox checked?)
             3 If so, the operation after the question mark will be executed (total + 1.5)
             4 Otherwise, if the condition is not true, return the value after the colon (total)*/
            total = (pepperoniCheckBox.Checked) ? total + 1.5 : total;
            total = (onionsCheckBox.Checked) ? total + 0.75 : total;
            total = (greenPeppersCheckBox.Checked) ? total + 0.5 : total;
            total = (redPeppersCheckBox.Checked) ? total + 0.75 : total;
            total = (anchoviesCheckBox.Checked) ? total + 2.0 : total;
            // checked if either of these conditions inside the if statement is met and if so subtract 2 from our total
            if ((pepperoniCheckBox.Checked && greenPeppersCheckBox.Checked && anchoviesCheckBox.Checked) || (pepperoniCheckBox.Checked && redPeppersCheckBox.Checked && onionsCheckBox.Checked))
            {
                total -= 2.0;
            }
            // output the final result.
            totalLabel.Text = "$" + total.ToString();
        }
    }
}


