.class public final Lcom/inmobi/ads/InMobiAdRequestStatus;
.super Ljava/lang/Object;
.source "InMobiAdRequestStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    }
.end annotation


# static fields
.field private static final AD_ACTIVE_MESSAGE:Ljava/lang/String; = "The Ad Request could not be submitted as the user is viewing another Ad."

.field private static final AD_AVAILABILITY_CHANGED_MESSAGE:Ljava/lang/String; = "An ad is no longer available. Please call load() to fetch a fresh ad."

.field private static final AD_EARLY_REFRESH_MESSAGE:Ljava/lang/String; = "The Ad Request cannot be done so frequently. Please wait for some time before loading another ad."

.field private static final INTERNAL_ERROR_MESSAGE:Ljava/lang/String; = "The InMobi SDK encountered an internal error."

.field private static final NETWORK_UNREACHABLE_MESSAGE:Ljava/lang/String; = "The Internet is unreachable. Please check your Internet connection."

.field private static final NO_FILL_MESSAGE:Ljava/lang/String; = "Ad request successful but no ad served."

.field private static final REQUEST_INVALID_MESSAGE:Ljava/lang/String; = "An invalid ad request was sent and was rejected by the Ad Network. Please validate the ad request and try again"

.field private static final REQUEST_PENDING_MESSAGE:Ljava/lang/String; = "The SDK is pending response to a previous ad request. Please wait for the previous ad request to complete before requesting for another ad."

.field private static final REQUEST_TIMED_OUT_MESSAGE:Ljava/lang/String; = "The Ad Request timed out waiting for a response from the network. This can be caused due to a bad network connection. Please try again after a few minutes."

.field private static final SERVER_ERROR_MESSAGE:Ljava/lang/String; = "The Ad Server encountered an error when processing the ad request. This may be a transient issue. Please try again in a few minutes"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mStatusCode:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mStatusCode:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 79
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setMessage()V

    .line 80
    return-void
.end method

.method private setMessage()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$1;->a:[I

    iget-object v1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mStatusCode:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const-string v0, "The InMobi SDK encountered an internal error."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_1
    const-string v0, "The Internet is unreachable. Please check your Internet connection."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "An invalid ad request was sent and was rejected by the Ad Network. Please validate the ad request and try again"

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v0, "The SDK is pending response to a previous ad request. Please wait for the previous ad request to complete before requesting for another ad."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_4
    const-string v0, "The Ad Request timed out waiting for a response from the network. This can be caused due to a bad network connection. Please try again after a few minutes."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 112
    :pswitch_5
    const-string v0, "The Ad Server encountered an error when processing the ad request. This may be a transient issue. Please try again in a few minutes"

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 115
    :pswitch_6
    const-string v0, "Ad request successful but no ad served."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 118
    :pswitch_7
    const-string v0, "The Ad Request could not be submitted as the user is viewing another Ad."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 121
    :pswitch_8
    const-string v0, "The Ad Request cannot be done so frequently. Please wait for some time before loading another ad."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 124
    :pswitch_9
    const-string v0, "An ad is no longer available. Please call load() to fetch a fresh ad."

    iput-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mStatusCode:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    return-object v0
.end method

.method public setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;
    .locals 0

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->mMessage:Ljava/lang/String;

    .line 91
    :cond_0
    return-object p0
.end method
