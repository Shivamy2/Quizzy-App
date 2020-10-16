from flask import Flask, jsonify, request
import requests
from bs4 import BeautifulSoup

app = Flask(__name__)

@app.route('/')
def homePage():
    return "Welcome on my APi Site"
@app.route('/international/')
def internationalApi():
    url = 'https://www.indiabix.com/current-affairs/international/'
    content = requests.get(url).content
    soup = BeautifulSoup(content, 'html.parser')
    question_link = soup.find_all("td", class_="bix-td-qtxt")
    answer_link = soup.find_all("span", class_="jq-hdnakqb")
    Explanation_link = soup.find_all("div", class_="bix-ans-description")
    Options_link = soup.find_all("td", class_="bix-td-option")
    listQuestion = []
    i = 1
    for itemQuestions in question_link:
        listQuestion.append(itemQuestions.text)
        i = i + 1
    listAnswer = []
    for itemAnswers in answer_link:
        listAnswer.append(itemAnswers.text)
    listExplanation = []
    for itemExplanation in Explanation_link:
        ESet = {}
        ESet['Explanation'] = itemExplanation.text
        listExplanation.append(ESet)
    listOptions = []
    for items in Options_link:
        listOptions.append(items.text)
    d = {}
    originAlpha = 65
    listOptions2 = []
    for itemsOriginal in listOptions:
        if listOptions.index(itemsOriginal) % 2 != 0:
            d[chr(originAlpha)] = itemsOriginal
            originAlpha = originAlpha + 1
            if chr(originAlpha) == 'E':
                originAlpha = 65
                listOptions2.append(d)
                d = {}
    if chr(originAlpha) != 'A' and chr(originAlpha) != 'E':
        listOptions2.append(d)
    listFullnFinal = []
    listFullnFinal.append(listQuestion)
    listFullnFinal.append(listOptions2)
    listFullnFinal.append(listAnswer)
    listFullnFinal.append(listExplanation)
    return jsonify(listFullnFinal)


@app.route('/current-affairs/')
def currentAffairs():
    url = 'https://www.indiabix.com/current-affairs/questions-and-answers/'
    content = requests.get(url).content
    soup = BeautifulSoup(content, 'html.parser')
    question_link = soup.find_all('p', class_='mx-lh-2')[0]
    element_link = question_link.find_all('a')[-1]
    weakUrl = element_link.get('href')
    finalUrl = 'https://www.indiabix.com' + weakUrl
    content2 = requests.get(finalUrl).content
    soup2 = BeautifulSoup(content2, 'html.parser')
    question_link = soup2.find_all("td", class_="bix-td-qtxt")
    answer_link = soup2.find_all("span", class_="jq-hdnakqb")
    Explanation_link = soup2.find_all("div", class_="bix-ans-description")
    Options_link = soup2.find_all("td", class_="bix-td-option")
    listQuestions = []
    for itemQuestions in question_link:
      
        listQuestions.append(itemQuestions.text)
    listAnswer = []
    for itemAnswers in answer_link:

        listAnswer.append(itemAnswers.text)
    listExplanation = []
    for itemExplanation in Explanation_link:
        ESet = {}
        ESet['Explanation'] = itemExplanation.text
        listExplanation.append(ESet)
    listOptions = []
    for items in Options_link:
        listOptions.append(items.text)
    d = {}
    originAlpha = 65
    listOptions2 = []
    for itemsOriginal in listOptions:
        if listOptions.index(itemsOriginal) % 2 != 0:
            d[chr(originAlpha)] = itemsOriginal
            originAlpha = originAlpha + 1
            if chr(originAlpha) == 'E':
                originAlpha = 65
                listOptions2.append(d)
                d = {}
    if chr(originAlpha) != 'A' and chr(originAlpha) != 'E':
        listOptions2.append(d)
    listFullnFinal = []
    listFullnFinal.append(listQuestions)
    listFullnFinal.append(listOptions2)
    listFullnFinal.append(listAnswer)
    listFullnFinal.append(listExplanation)
    return jsonify(listFullnFinal)


if __name__ == "__main__":
    app.run(debug=True)
