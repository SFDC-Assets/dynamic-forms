sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p dynamic -e forms.demo
sf project deploy start
sf org assign permset -n AppBuilder
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /lightning/o/Vehicle__c/list?filterName=Recent
sf automig load -d data --concise
