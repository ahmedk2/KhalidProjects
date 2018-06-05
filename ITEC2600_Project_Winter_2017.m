%Khalid Ahmed 214553044 

%This program will run a data file(ITEC2600 project data.xls), which contains the grades of ITEC2600 for the past fours terms: 
%2016 fall, 2016 summer, 2016 winter and 2015 fall. It will calculate the final mark for each student according to the following rules: Each assignment is worth 5%, midterm is worth 40% and final is worth 45%, 
%and the final letter grade is calculated according to York grading policy.It will also Report minimum, maximum, median, mean, standard deviation and grade distribution 
%based on the final marks for each term, and compare them for all four terms graphically. Furthermore, the program will find a curve/math function for each term and it will report the pass rates for each term.
%The user will also have a menu where they can access the final grades, math statitics, grade distrubtion, curve/math function or pass rates of each term.

Fall2016 = xlsread('ITEC2600_project_data','2016Fall');
Summer2016 = xlsread('ITEC2600_project_data','2016Summer');
Winter2016 = xlsread('ITEC2600_project_data','2016Winter');
Fall2015 = xlsread('ITEC2600_project_data','2015Fall');

%A menu that illustrates an analysis on grades for four terms
option = menu('Select an option ','Final Marks','Math Statistics','Grade Distribution','Curve/Math Function','Pass Rates for each term','Exit');

while(option ~= 6)
switch option  
    
    case 1
        fprintf('Grades for ITEC2600 Fall 2016\n\n');
        fprintf('Student ID   Final   Grade\n');
        
        %Determines the grades for the Fall 2016 term based on final marks
        for i = 1:length(Fall2016)
            Fall2016(i,7) = Fall2016(i,2)*0.05 + Fall2016(i,3)*0.05 + Fall2016(i,4)*0.05 + Fall2016(i,5)*0.4 + Fall2016(i,6)*0.45;
            if Fall2016(i,7)>= 90
                FallGrade_16{i,1} = 'A+';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 80)&&(Fall2016(i,7)<90)
                FallGrade_16{i,1} = 'A';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 75)&&(Fall2016(i,7)<80)
                FallGrade_16{i,1} = 'B+';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 70)&&(Fall2016(i,7)<75)
                FallGrade_16{i,1} = 'B';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 65)&&(Fall2016(i,7)<70)
                FallGrade_16{i,1} = 'C+';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 60)&&(Fall2016(i,7)<65)
                FallGrade_16{i,1} = 'C';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 55)&&(Fall2016(i,7)<60)
                FallGrade_16{i,1} = 'D+';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 50)&&(Fall2016(i,7)<55)
                FallGrade_16{i,1} = 'D';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)>= 45)&&(Fall2016(i,7)<50)
                FallGrade_16{i,1} = 'E';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            elseif (Fall2016(i,7)<45)
                FallGrade_16{i,1} = 'F';
                fprintf('%9d   %2.4f  %2s\n',Fall2016(i,1),Fall2016(i,7),FallGrade_16{i,1});
            end
        end
        
        fprintf('\n');
        fprintf('Grades for ITEC2600 Summer 2016\n\n');
        fprintf('Student ID   Final  Grade\n');
      
       %Determines the grades for the Summer 2016 term based on final marks
        for i = 1:length(Summer2016)
            Summer2016(i,7) = Summer2016(i,2)*0.05 + Summer2016(i,3)*0.05 + Summer2016(i,4)*0.05 + Summer2016(i,5)*0.4 + Summer2016(i,6)*0.45;
            if Summer2016(i,7)>= 90
                SummerGrade_16{i,1} = 'A+';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 80)&&(Summer2016(i,7)<90)
                SummerGrade_16{i,1} = 'A';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 75)&&(Summer2016(i,7)<80)
                SummerGrade_16{i,1} = 'B+';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 70)&&(Summer2016(i,7)<75)
                SummerGrade_16{i,1} = 'B';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 65)&&(Summer2016(i,7)<70)
                SummerGrade_16{i,1} = 'C+';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 60)&&(Summer2016(i,7)<65)
                SummerGrade_16{i,1} = 'C';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 55)&&(Summer2016(i,7)<60)
                SummerGrade_16{i,1} = 'D+';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 50)&&(Summer2016(i,7)<55)
                SummerGrade_16{i,1} = 'D';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)>= 45)&&(Summer2016(i,7)<50)
                SummerGrade_16{i,1} = 'E';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            elseif (Summer2016(i,7)<45)
                SummerGrade_16{i,1} = 'F';
                fprintf('%9d   %2.4f  %2s\n',Summer2016(i,1),Summer2016(i,7),SummerGrade_16{i,1});
            end
        end

        fprintf('\n');
        fprintf('Grades for ITEC2600 Winter 2016\n\n');
        fprintf('Student ID   Final  Grade\n');
      
        %Determines the grades for the Winter 2016 term based on final marks
        for i = 1:length(Winter2016)
            Winter2016(i,7) = Winter2016(i,2)*0.05 + Winter2016(i,3)*0.05 + Winter2016(i,4)*0.05 + Winter2016(i,5)*0.4 + Winter2016(i,6)*0.45;
            if Winter2016(i,7)>= 90
                WinterGrades_16{i,1} = 'A+';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 80)&&(Winter2016(i,7)<90)
                WinterGrades_16{i,1} = 'A';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 75)&&(Winter2016(i,7)<80)
                WinterGrades_16{i,1} = 'B+';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 70)&&(Winter2016(i,7)<75)
                WinterGrades_16{i,1} = 'B';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 65)&&(Winter2016(i,7)<70)
                WinterGrades_16{i,1} = 'C+';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 60)&&(Winter2016(i,7)<65)
                WinterGrades_16{i,1} = 'C';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 55)&&(Winter2016(i,7)<60)
                WinterGrades_16{i,1} = 'D+';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 50)&&(Winter2016(i,7)<55)
                WinterGrades_16{i,1} = 'D';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)>= 45)&&(Winter2016(i,7)<50)
                WinterGrades_16{i,1} = 'E';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            elseif (Winter2016(i,7)<45)
                WinterGrades_16{i,1} = 'F';
                fprintf('%9d   %2.4f  %2s\n',Winter2016(i,1),Winter2016(i,7),WinterGrades_16{i,1});
            end
        end
        
        fprintf('\n');
        fprintf('Grades for ITEC2600 Fall 2015\n\n');
        fprintf('Student ID   Final   Grade\n');
       
        %Determines the grades for the Fall 2015 term based on final marks
        for i = 1:length(Fall2015)
            Fall2015(i,7) = Fall2015(i,2)*0.05 + Fall2015(i,3)*0.05 + Fall2015(i,4)*0.05 + Fall2015(i,5)*0.4 + Fall2015(i,6)*0.45;
            if Fall2015(i,7)>= 90
                FallGrades_15{i,1} = 'A+';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 80)&&(Fall2015(i,7)<90)
                FallGrades_15{i,1} = 'A';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 75)&&(Fall2015(i,7)<80)
                FallGrades_15{i,1} = 'B+';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 70)&&(Fall2015(i,7)<75)
                FallGrades_15{i,1} = 'B';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 65)&&(Fall2015(i,7)<70)
                FallGrades_15{i,1} = 'C+';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 60)&&(Fall2015(i,7)<65)
                FallGrades_15{i,1} = 'C';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 55)&&(Fall2015(i,7)<60)
                FallGrades_15{i,1} = 'D+';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 50)&&(Fall2015(i,7)<55)
                FallGrades_15{i,1} = 'D';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)>= 45)&&(Fall2015(i,7)<50)
                FallGrades_15{i,1} = 'E';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
            elseif (Fall2015(i,7)<45)
                FallGrades_15{i,1} = 'F';
                fprintf('%9d   %2.4f  %2s\n',Fall2015(i,1),Fall2015(i,7),FallGrades_15{i,1});
                fprintf('\n');
            end
        end

    case 2
        %Determines the minimum value in each term
        Min_Fall_2015 = min(Fall2015(:,7));
        Min_Winter_2016 = min(Winter2016(:,7));
        Min_Summer_2016 = min(Summer2016(:,7));
        Min_Fall_2016 = min(Fall2016(:,7));

        %Determines the maximum value in each term
        Max_Fall_2015 = max(Fall2015(:,7));
        Max_Winter_2016 = max(Winter2016(:,7));
        Max_Summer_2016 = max(Summer2016(:,7));
        Max_Fall_2016 = max(Fall2016(:,7));
        
        %Determines the median value in each term
        Median_Fall_2015 = median(Fall2015(:,7));
        Median_Winter_2016 = median(Winter2016(:,7));
        Median_Summer_2016 = median(Summer2016(:,7));
        Median_Fall_2016 = median(Fall2016(:,7));
        
        %Determines the mean value in each term
        Mean_Fall_2015 = mean(Fall2015(:,7));
        Mean_Winter_2016 = mean(Winter2016(:,7));
        Mean_Summer_2016 = mean(Summer2016(:,7));
        Mean_Fall_2016 = mean(Fall2016(:,7));
       
        %Determines the standard deviation in each term
        Std_Fall_2015 = std(Fall2015(:,7));
        Std_Winter_2016 = std(Winter2016(:,7));
        Std_Summer_2016 = std(Summer2016(:,7));
        Std_Fall_2016 = std(Fall2016(:,7));
        
  
        mathstatistics(1,:) = [Min_Fall_2015 Max_Fall_2015 Median_Fall_2015 Mean_Fall_2015 Std_Fall_2015];
        mathstatistics(2,:) = [Min_Winter_2016 Max_Winter_2016 Median_Winter_2016 Mean_Winter_2016 Std_Winter_2016];
        mathstatistics(3,:) = [Min_Summer_2016 Max_Summer_2016 Median_Summer_2016 Mean_Summer_2016 Std_Summer_2016];
        mathstatistics(4,:) = [Min_Fall_2016 Max_Fall_2016 Median_Fall_2016 Mean_Fall_2016 Std_Fall_2016];
           
        %Plots a bar graph showing each mathematical statistic
        figure
        bar(mathstatistics,'grouped');
        
        %Details of the graph
        xlabel('Term')
        ylabel('Grade')
        title('Comparison of Grades for all Four Terms');
        legend('Minimum','Maximum','Median','Mean','Standard Deviation');

        set(gca,'xtick',1:4)
        set(gca,'xticklabel',{'Fall 2016','Summer 2016','Winter 2016','Fall 2015'})
        axis([0.5  4.5 0 110])
         
      
    case 3

      %Grade distribution based for all four terms

        Grades(1,1) = length(find(Fall2016(:,7)>=90));
        Grades(1,2) = length(find(Summer2016(:,7)>=90));
        Grades(1,3) = length(find(Winter2016(:,7)>=90));
        Grades(1,4) = length(find(Fall2015(:,7)>=90));
        
        Grades(2,1) = length(find(Fall2016(:,7)>=80 & Fall2016(:,7)<90));
        Grades(2,2) = length(find(Summer2016(:,7)>=80 & Summer2016(:,7)<90));
        Grades(2,3) = length(find(Winter2016(:,7)>=80 & Winter2016(:,7)<90));
        Grades(2,4) = length(find(Fall2015(:,7)>=80 & Fall2015(:,7)<90));
        
        Grades(3,1) = length(find((Fall2016(:,7)>= 75)&(Fall2016(:,7)<80)));
        Grades(3,2) = length(find((Summer2016(:,7)>= 75)&(Summer2016(:,7)<80)));
        Grades(3,3) = length(find((Winter2016(:,7)>= 75)&(Winter2016(:,7)<80)));
        Grades(3,4) = length(find((Fall2015(:,7)>= 75)&(Fall2015(:,7)<80)));
        
        Grades(4,1) = length(find((Fall2016(:,7)>= 70)&(Fall2016(:,7)<75)));
        Grades(4,2) = length(find((Summer2016(:,7)>= 70)&(Summer2016(:,7)<75)));
        Grades(4,3) = length(find((Winter2016(:,7)>= 70)&(Winter2016(:,7)<75)));
        Grades(4,4) = length(find((Fall2015(:,7)>= 70)&(Fall2015(:,7)<75)));
        
        Grades(5,1) = length(find((Fall2016(:,7)>= 65)&(Fall2016(:,7)<70)));
        Grades(5,2) = length(find((Summer2016(:,7)>= 65)&(Summer2016(:,7)<70)));
        Grades(5,3) = length(find((Winter2016(:,7)>= 65)&(Winter2016(:,7)<70)));
        Grades(5,4) = length(find((Fall2015(:,7)>= 65)&(Fall2015(:,7)<70)));
        
        Grades(6,1) = length(find((Fall2016(:,7)>= 60)&(Fall2016(:,7)<65)));
        Grades(6,2) = length(find((Summer2016(:,7)>= 60)&(Summer2016(:,7)<65)));
        Grades(6,3) = length(find((Winter2016(:,7)>= 60)&(Winter2016(:,7)<65)));
        Grades(6,4) = length(find((Fall2015(:,7)>= 60)&(Fall2015(:,7)<65)));
        
        Grades(7,1) = length(find((Fall2016(:,7)>= 55)&(Fall2016(:,7)<60)));
        Grades(7,2) = length(find((Summer2016(:,7)>= 55)&(Summer2016(:,7)<60)));
        Grades(7,3) = length(find((Winter2016(:,7)>= 55)&(Winter2016(:,7)<60)));
        Grades(7,4) = length(find((Fall2015(:,7)>= 55)&(Fall2015(:,7)<60)));
        
        Grades(8,1) = length(find((Fall2016(:,7)>= 50)&(Fall2016(:,7)<55)));
        Grades(8,2) = length(find((Summer2016(:,7)>= 50)&(Summer2016(:,7)<55)));
        Grades(8,3) = length(find((Winter2016(:,7)>= 50)&(Winter2016(:,7)<55)));
        Grades(8,4) = length(find((Fall2015(:,7)>= 50)&(Fall2015(:,7)<55)));
        
        Grades(9,1) = length(find((Fall2016(:,7)>= 45)&(Fall2016(:,7)<50)));
        Grades(9,2) = length(find((Summer2016(:,7)>= 45)&(Summer2016(:,7)<50)));
        Grades(9,3) = length(find((Winter2016(:,7)>= 45)&(Winter2016(:,7)<50)));
        Grades(9,4) = length(find((Fall2015(:,7)>= 45)&(Fall2015(:,7)<50)));
        
        Grades(10,1) = length(find((Fall2016(:,7)<45)));
        Grades(10,2) = length(find((Summer2016(:,7)<45)));
        Grades(10,3) = length(find((Winter2016(:,7)<45)));
        Grades(10,4) = length(find((Fall2015(:,7)<45)));
        
        %Plots a bar graph displaying the grades for each term
        figure,
        bar(Grades,'grouped');
        
        %Details of the graph
        xlabel('Grades')
        ylabel('Students')
        title('Grades Distribution per Term');
        legend('Fall 2016','Summer 2016','Winter 2016','Fall 2015');

        set(gca,'xtick',1:10)
        set(gca,'xticklabel',{'A+','A','B+','B','C+','C','D+','D','E','F'})
        axis([0  11 0 16])
        
    case 4
        
       %Curve/math function for each term
        pf_1 = polyfit((1:10)',Grades(:,1),5);
        pv_1 = polyval(pf_1,(1:10)');
        pf_2 = polyfit((1:10)',Grades(:,2),5);
        pv_2 = polyval(pf_2,(1:10)');
        pf_3 = polyfit((1:10)',Grades(:,3),5);
        pv_3 = polyval(pf_3,(1:10)');
        pf_4 = polyfit((1:10)',Grades(:,4),5);
        pv_4 = polyval(pf_4,(1:10)');
       
        figure
        plot((1:10)',pv_1, 'r');
        hold on
        plot((1:10)',pv_2, 'b');
        hold on
        plot((1:10)',pv_3, 'g');
        hold on
        plot((1:10)',pv_4, 'm');
        hold on
        
        %Details of the graph
        xlabel('Grades')
        ylabel('Students')
        title('Grades Distribution per Term with a polynomial function');
        legend('Fall 2016','Summer 2016','Winter 2016','Fall 2015');
        
    case 5  
       
    %Determines the pass rate for each term  
        Fall_15_pass_rate = (length(find((Fall2016(:,7)>=50)))/length(Fall2016(:,7)))*100;
        Winter_16_pass_rate = (length(find((Summer2016(:,7)>=50)))/length(Summer2016(:,7)))*100;
        Summer_16_pass_rate = (length(find((Winter2016(:,7)>=50)))/length(Winter2016(:,7)))*100;
        Fall_16_pass_rate = (length(find((Fall2015(:,7)>=50)))/length(Fall2015(:,7)))*100;
        
    %Displays the pass rate for each term
        fprintf('Fall 2016 pass rate is %3.2f percent\n',Fall_15_pass_rate);
        fprintf('Summer 2016 pass rate is %3.2f percent\n',Winter_16_pass_rate);
        fprintf('Winter 2016 pass rate is %3.2f percent\n',Summer_16_pass_rate);
        fprintf('Fall 2015 pass rate is %3.2f percent\n',Fall_16_pass_rate);
       
        
end

%Menu that illustrates an analysis on grades for four terms
option = menu('Select an option ','Final Marks','Math Statistics','Grade Distribution','Curve/Math Function','Pass Rates for each term','Exit');

end
