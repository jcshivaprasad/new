<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_For_Approval</fullName>
        <description>Email For Approval</description>
        <protected>true</protected>
        <recipients>
            <recipient>moviemar123@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>Email_for_Reject</fullName>
        <description>Email for Reject</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>Email_for_Rejection</fullName>
        <description>Email for Rejection</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Primary_Contact</fullName>
        <description>Email to Primary Contact</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <recipient>mmm@deloitte.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Asset_Workflow_Email</template>
    </alerts>
    <alerts>
        <fullName>alert_for_approval</fullName>
        <description>alert for approval</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>aprroval_mail</fullName>
        <description>aprroval mail</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>email</fullName>
        <description>email</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <recipient>mmm@deloitte.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>email_alert_for_approval</fullName>
        <description>email alert for approval</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>email_alert_for_approval1</fullName>
        <description>email alert for approval1</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <alerts>
        <fullName>email_alert_for_approvals</fullName>
        <description>email alert for approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>mmm@deloitte.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>navingupta03@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Sent_For_Approval</template>
    </alerts>
    <alerts>
        <fullName>initial_submission</fullName>
        <description>initial submission</description>
        <protected>false</protected>
        <recipients>
            <field>Primary_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_for_Approval_Asset</template>
    </alerts>
    <rules>
        <fullName>Asset Creation Check</fullName>
        <actions>
            <name>Email_to_Primary_Contact</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Title__c.CreatedById</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>Whenever a new Asset Concept Record is created , this Workflow is fired to send an email to the primary contact regarding the creation</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
