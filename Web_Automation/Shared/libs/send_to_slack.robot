*** Settings ***
Library         RobotNotifications          https://hooks.slack.com/services/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   
      
*** Test Cases ***
Example Test
    Post Message To Channel                 Relatório de testes         icon_emoji=robot_face           username=e-peca_robot    
    ...                                     channel=status_report_automation   