//
//  SampleOneNode.swift
//  Resume
//
//  Created by Jeffery Pereira on 4/11/19.
//  Copyright © 2019 Jeffery Pereira. All rights reserved.
//

import Foundation

class SampleOneNode{
    var headerFront: String = "<!DOCTYPE html><html><head><link href=\"./img/favicon.png\" rel=\"shortcut icon\"><meta charset=\"utf-8\"><meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" name=\"viewport\">"
    
    var cssLink: String = "<link href=\"./css/simplesample.css\" rel=\"stylesheet\" type=\"text/css\">"
    
    var headerBack: String = "<meta content=\"Launchpad by Anima\" name=\"author\"></head>\""
    
    var bodyElementStart: String = "<body style=\"margin: 0;background: rgba(255, 255, 255, 1.0);\"><input id=\"anPageName\" name=\"page\" type=\"hidden\" value=\"simplesample\">"
    var simpleSampleDiv: String = "<div class=\"simplesample\" style=\"-webkit-text-size-adjust:none;width:100%;min-width:595px;height:100vh;min-height:842px;position:relative;overflow:hidden;margin:0px;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale;background-color:rgba(255, 255, 255, 1.0);\">"
    var containerDiv: String = "<div style=\"width:595px;height:100%;position:relative;margin:auto;-webkit-text-size-adjust:none;\">"
    var contactInfoPart: String = "<div class=\"contactinfo\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:679px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(1, 58, 222, 1.0);text-align:left;line-height:18.0px;'>CONTACT INFO</div>"
    var educationInfoPart: String = "<div class=\"education\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:419px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(1, 58, 222, 1.0);text-align:left;line-height:18.0px;'>EDUCATION</div>"
    
    
    var honorInfoPart: String = "<div class=\"honors\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:595px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(1, 58, 222, 1.0);text-align:left;line-height:18.0px;'>HONORS</div>"
    
    var workExperiencePart: String = "<div class=\"workexperience\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:125px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(1, 58, 222, 1.0);text-align:left;line-height:18.0px;'>WORK EXPERIENCE</div>"
    
    var mainHeaderPart: String = "<div class=\"luisyujau2013celestia\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:57px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Bold\", Helvetica, Arial, serif;font-size:24.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:29.0px;'>Luis Yuja &ndash; Celestial Being</div>"
    
    var personalInfo: String = "<div class=\"wwwlegyujadesignl\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:707px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>www.legyuja.design<br>legyuja@gmail.com<br>209-879-3308</div>"
    
    var eduHeader1: String = "<div class=\"studiedcommunicatio\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:465px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>Studied Communication Studies</div>"
    
    var eduHeader2: String = "<div class=\"studiedcommunicatiocopy3\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:641px;height:auto;width:233px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>Studied Communication Studies</div>"
    
    var eduHeader3: String = "<div class=\"studiedcommunicatiocopy\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:511px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>Studied Communication Studies</div>"
    
    var eduHeader4: String = "<div class=\"studiedcommunicatiocopy2\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:557px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>Studied Communication Studies</div>"
    
    var eduSubHeader1: String = "<div class=\"sfstateuniversity\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:447px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:18.0px;'>SF State University</div>"
    
    var honorsHeader2: String = "<div class=\"certifiedairbreathe\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:623px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:18.0px;'>Certified Airbreather</div>"
    
    var eduSubHeader2: String = "<div class=\"sfstateuniversitycopy\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:493px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:18.0px;'>SF State University</div>"
    
    var eduSubHeader3: String = "<div class=\"sfstateuniversitycopy2\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:539px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Medium\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:18.0px;'>SF State University</div>"
    
    var workExperienceSubHeader1: String = "<div class=\"optimizedcrucialfl\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:181px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>Optimized crucial flows of Snap (SaaS platform), and lead the redesign of Daily Challenge (MYH&rsquo;s oldest web app) in UI/UX while closely working with engineers for functionality.</div>"
    
    var workExperienceSubHeader2: String = "<div class=\"optimizedcrucialflcopy\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:263px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>Optimized crucial flows of Snap (SaaS platform), and lead the redesign of Daily Challenge (MYH&rsquo;s oldest web app) in UI/UX while closely working with engineers for functionality.</div>"
    
    var workExperienceSubHeader3: String = "<div class=\"optimizedcrucialfl1\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:345px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 0.5);text-align:left;line-height:18.0px;'>Optimized crucial flows of Snap (SaaS platform), and lead the redesign of Daily Challenge (MYH&rsquo;s oldest web app) in UI/UX while closely working with engineers for functionality.</div>"
    
    var workExperienceHeader: String = "<div class=\"productdesignerm\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:163px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Bold\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:18.0px;'>Product Designer / MeYou Health One</div>"
    
    var workExperienceHeader1: String = "<div class=\"productdesignermcopy\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:245px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Bold\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:18.0px;'>Product Designer / MeYou Health Two</div>"
    
    var workExperienceHeader2: String = "<div class=\"productdesignermcopy2\" style='-webkit-text-size-adjust:none;background-color:rgba(255,255,255,0.0);top:327px;height:auto;width:465px;position:absolute;margin:0;left:65px;-ms-transform:rotate(0deg);-webkit-transform:rotate(0deg);transform:rotate(0deg);font-family:\"HelveticaNeue-Bold\", Helvetica, Arial, serif;font-size:12.0px;color:rgba(34, 34, 34, 1.0);text-align:left;line-height:18.0px;'>Product Designer / MeYou Health Three</div></div></div>"
    
    var scriptPart: String = "<!-- Scripts --><script>anima_isHidden = function(e) {if (!(e instanceof HTMLElement)) return !1;if (getComputedStyle(e).display == \"none\") return !0; else if (e.parentNode && anima_isHidden(e.parentNode)) return !0;return !1;};anima_loadAsyncSrcForTag = function(tag) {var elements = document.getElementsByTagName(tag);var toLoad = [];for (var i = 0; i < elements.length; i++) {var e = elements[i];var src = e.getAttribute(\"src\");var loaded = (src != undefined && src.length > 0 && src != 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==');if (loaded) continue;var asyncSrc = e.getAttribute(\"anima-src\");if (asyncSrc == undefined || asyncSrc.length == 0) continue;if (anima_isHidden(e)) continue;toLoad.push(e);}toLoad.sort(function(a, b) {return anima_getTop(a) - anima_getTop(b);});for (var i = 0; i < toLoad.length; i++) {var e = toLoad[i];var asyncSrc = e.getAttribute(\"anima-src\");e.setAttribute(\"src\", asyncSrc);}};anima_pauseHiddenVideos = function(tag) {var elements = document.getElementsByTagName(\"video\");for (var i = 0; i < elements.length; i++) {var e = elements[i];var isPlaying = !!(e.currentTime > 0 && !e.paused && !e.ended && e.readyState > 2);var isHidden = anima_isHidden(e);if (!isPlaying && !isHidden && e.getAttribute(\"autoplay\") == \"autoplay\") {e.play();} else if (isPlaying && isHidden) {e.pause();}}};anima_loadAsyncSrc = function(tag) {anima_loadAsyncSrcForTag(\"img\");anima_loadAsyncSrcForTag(\"iframe\");anima_loadAsyncSrcForTag(\"video\");anima_pauseHiddenVideos();};var anima_getTop = function(e) {var top = 0;do {top += e.offsetTop || 0;e = e.offsetParent;} while (e);return top;};anima_loadAsyncSrc();anima_old_onResize = window.onresize;anima_new_onResize = undefined;anima_updateOnResize = function() {if (anima_new_onResize == undefined || window.onresize != anima_new_onResize) {anima_new_onResize = function(x) {if (anima_old_onResize != undefined) anima_old_onResize(x);anima_loadAsyncSrc();};window.onresize = anima_new_onResize;setTimeout(function() {anima_updateOnResize();}, 3000);}};anima_updateOnResize();setTimeout(function() {anima_loadAsyncSrc();}, 200);</script><!-- End of Scripts -->"
    
    var bodyElementEnd = "</body>"
    
    var closing: String = "</html>"
    
    var combinedHTML: String!
    
    
    
    init(){
        runHTMLAppend()
    }
    
    func runHTMLAppend(){
        combinedHTML = ""
        
        combinedHTML = headerFront
        combinedHTML.append(cssLink)
        combinedHTML.append(headerBack)
        combinedHTML.append(bodyElementStart)
        combinedHTML.append(simpleSampleDiv)
        combinedHTML.append(containerDiv)
        combinedHTML.append(contactInfoPart)
        combinedHTML.append(educationInfoPart)
        combinedHTML.append(honorInfoPart)
        combinedHTML.append(workExperiencePart)
        combinedHTML.append(mainHeaderPart)
        combinedHTML.append(personalInfo)
        combinedHTML.append(eduHeader1)
        combinedHTML.append(eduHeader2)
        combinedHTML.append(eduHeader3)
        combinedHTML.append(eduHeader4)
        combinedHTML.append(eduSubHeader1)
        combinedHTML.append(honorsHeader2)
        combinedHTML.append(eduSubHeader2)
        combinedHTML.append(eduSubHeader3)
        combinedHTML.append(workExperienceSubHeader1)
        combinedHTML.append(workExperienceSubHeader2)
        combinedHTML.append(workExperienceSubHeader3)
        combinedHTML.append(workExperienceHeader)
        combinedHTML.append(workExperienceHeader1)
        combinedHTML.append(workExperienceHeader2)
        combinedHTML.append(scriptPart)
        combinedHTML.append(bodyElementEnd)
        combinedHTML.append(closing)
        
    }
    
    func setFirstName(name: String){
        mainHeaderPart = mainHeaderPart.replacingOccurrences(of: "Luis", with: name)
        
        runHTMLAppend()
    }
    
    func setLastName(name: String){
        mainHeaderPart = mainHeaderPart.replacingOccurrences(of: "Yuja", with: name)
        
        runHTMLAppend()
    }
    
    func setEmail(email: String){
        personalInfo = personalInfo.replacingOccurrences(of: "legyuja@gmail.com", with: email)
        
        runHTMLAppend()
    }
    
    func setNumber(number: String){
        personalInfo = personalInfo.replacingOccurrences(of: "209-879-3308", with: number)
        
        runHTMLAppend()
    }
    
    func setWebsite(website: String){
        personalInfo = personalInfo.replacingOccurrences(of: "www.legyuja.design", with: website)
        
        runHTMLAppend()
    }
    
    func setWorkExperienceOne(expOne: String, subOne: String){
        workExperienceHeader = workExperienceHeader.replacingOccurrences(of: "Product Designer / MeYou Health One", with: expOne)
        
        workExperienceSubHeader1 = workExperienceSubHeader1.replacingOccurrences(of: "Optimized crucial flows of Snap (SaaS platform), and lead the redesign of Daily Challenge (MYH&rsquo;s oldest web app) in UI/UX while closely working with engineers for functionality.", with: subOne)
        
        runHTMLAppend()
    }
    
    func setWorkExperienceTwo(expTwo: String, subTwo: String){
        workExperienceHeader1 = workExperienceHeader1.replacingOccurrences(of: "Product Designer / MeYou Health Two", with: expTwo)
        
        workExperienceSubHeader2 = workExperienceSubHeader1.replacingOccurrences(of: "Optimized crucial flows of Snap (SaaS platform), and lead the redesign of Daily Challenge (MYH&rsquo;s oldest web app) in UI/UX while closely working with engineers for functionality.", with: subTwo)
        
        runHTMLAppend()
    }
    
    func setWorkExperienceThree(expThree: String, subThree: String)
    {
        workExperienceHeader2 = workExperienceHeader2.replacingOccurrences(of: "Product Designer / MeYou Health Three", with: expThree)
        
        workExperienceSubHeader3 = workExperienceSubHeader3.replacingOccurrences(of: "Optimized crucial flows of Snap (SaaS platform), and lead the redesign of Daily Challenge (MYH&rsquo;s oldest web app) in UI/UX while closely working with engineers for functionality.", with: subThree)
        
        runHTMLAppend()
    }
    
    func setEducationOne(college: String, degree: String){
        eduHeader1 = eduHeader1.replacingOccurrences(of: "Studied Communication Studies", with: degree)
        eduSubHeader1 = eduSubHeader1.replacingOccurrences(of: "SF State University", with: college)
        
        runHTMLAppend()
    }
    
    func setEducationTwo(college: String, degree: String){
        eduHeader3 = eduHeader3.replacingOccurrences(of: "Studied Communication Studies", with: degree)
        eduSubHeader2 = eduSubHeader2.replacingOccurrences(of: "SF State University", with: college)
        
        runHTMLAppend()
    }
    
    func setEducationThree(college: String, degree: String){
        eduHeader4 = eduHeader4.replacingOccurrences(of: "Studied Communication Studies", with: degree)
        eduSubHeader3 = eduSubHeader3.replacingOccurrences(of: "SF State University", with: college)
        
        runHTMLAppend()
    }
    

}

