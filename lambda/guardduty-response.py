import boto3

def lambda_handler(event, context):
    # Initialize Boto3 client for GuardDuty
    client = boto3.client('guardduty')

    # Extract finding details from event
    finding = event['detail']['findings'][0]

    # Log the finding for debugging
    print(f"Processing GuardDuty finding: {finding['Title']}")

    # Example: If the finding is of a critical severity, trigger a response
    if finding['Severity'] >= 7.0:
        print("Critical finding detected, taking action...")
        # Trigger an automated response like blocking an IP, disabling access, etc.
    
    return {
        'statusCode': 200,
        'body': 'GuardDuty finding processed successfully.'
    }
