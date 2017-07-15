.class public Lcom/fyber/Fyber$Settings;
.super Ljava/lang/Object;
.source "Fyber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/Fyber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/Fyber$Settings$UIStringIdentifier;
    }
.end annotation


# static fields
.field public static a:Lcom/fyber/Fyber$Settings;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/fyber/Fyber$Settings$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/fyber/Fyber$Settings;

    invoke-direct {v0}, Lcom/fyber/Fyber$Settings;-><init>()V

    sput-object v0, Lcom/fyber/Fyber$Settings;->a:Lcom/fyber/Fyber$Settings;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-boolean v0, p0, Lcom/fyber/Fyber$Settings;->c:Z

    .line 248
    iput-boolean v0, p0, Lcom/fyber/Fyber$Settings;->d:Z

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/Fyber$Settings;->e:Z

    .line 1410
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    .line 1411
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->GENERIC_ERROR:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error happened when performing this operation"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error happened when loading the offer wall"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error happened when loading the offer wall (no internet connection)"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "You don\'t have the Google Play Store application on your device to complete App Install offers."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REWARD_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Thanks! Your reward will be paid out shortly"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Congratulations! You\'ve earned %.0f %s!"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "coins"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "We\'re sorry, something went wrong. Please try again."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_OFFLINE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Your Internet connection has been lost. Please try again later."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_FORFEIT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_CLICKTHROUGH_HINT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Tap anywhere to discover more about this ad"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_EXIT_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Exit Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_CLOSE_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Close Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_RESUME_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Resume Video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "An error has occurred while trying to load the video"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_LOADING_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Warning"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_DIALOG_MESSAGE_MARKET:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "You will now be redirected to the play store, do you wish to forfeit your reward?"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Do you wish to forfeit your reward?"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_ERROR:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Sorry, we cannot redirect you to the desired application"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->INT_VIDEO_DIALOG_CLOSE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Do you really want to skip the video?"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->SDK_NOT_STARTED:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "The SDK was not started"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ANNOTATIONS_PROBLEM:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Annotations not correctly integrated"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ANNOTATIONS_PROBLEM_DESCRIPTION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "You might be missing a dependency to the annotations and/or annotations-compiler libs. Make sure you also add @FyberSDK to one of your classes.\nYou need compiler version 1.4.0 or higher and annotations version 1.3.0 or higher."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->TOKEN_MISSING:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "The SDK was started without a security token\nThe token is required to fetch bundles\' credentials from the dashboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->NO_BUNDLES:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "No bundles integrated\nYou need at least one bundle integrated to have a complete analysis"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->TEST_SUITE_VERSION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Integration Test Suite - v%s"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->SDK_VERSION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "Fyber SDK - v%s"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->STARTED_BUNDLES_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "STARTED BUNDLES"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->STARTED_BUNDLES_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "The SDK successfully started the bundles above."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->BUNDLES_NOT_STARTED_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "BUNDLES NOT STARTED"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->BUNDLES_NOT_STARTED_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "The SDK could not start the bundles above.\nPlease make sure the corresponding networks are enabled on the dashboard and the necessary credentials are present."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->MISSING_BUNDLES_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "MISSING BUNDLES"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->MISSING_BUNDLES_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v2, "The SDK could not find the bundles above.\nPlease follow the Integration Guides in the Developer Portal to add them to your project."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/fyber/Fyber$Settings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fyber/Fyber$Settings;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/Fyber$Settings;)Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/fyber/Fyber$Settings;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/fyber/Fyber$Settings;)Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/fyber/Fyber$Settings;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/fyber/Fyber$Settings;)Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/fyber/Fyber$Settings;->c:Z

    return v0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object p0
.end method

.method public addParameters(Ljava/util/Map;)Lcom/fyber/Fyber$Settings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/Fyber$Settings;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p1}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 332
    :cond_1
    return-object p0
.end method

.method public clearParameters()Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 363
    :cond_0
    return-object p0
.end method

.method public closeOfferWallOnRedirect(Z)Lcom/fyber/Fyber$Settings;
    .locals 0

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/fyber/Fyber$Settings;->e:Z

    .line 310
    return-object p0
.end method

.method public getUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyUserOnCompletion(Z)Lcom/fyber/Fyber$Settings;
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/fyber/Fyber$Settings;->c:Z

    .line 282
    return-object p0
.end method

.method public notifyUserOnReward(Z)Lcom/fyber/Fyber$Settings;
    .locals 0

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/fyber/Fyber$Settings;->d:Z

    .line 296
    return-object p0
.end method

.method public removeParameter(Ljava/lang/String;)Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    return-object p0
.end method

.method public setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;ILandroid/content/Context;)Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)Lcom/fyber/Fyber$Settings;

    .line 522
    return-object p0
.end method

.method public setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/fyber/Fyber$Settings;->f:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    return-object p0
.end method

.method public setCustomUIStrings(Ljava/util/EnumMap;)Lcom/fyber/Fyber$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/fyber/Fyber$Settings$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/Fyber$Settings;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;)Lcom/fyber/Fyber$Settings;

    goto :goto_0

    .line 493
    :cond_0
    return-object p0
.end method

.method public setCustomUIStrings(Ljava/util/EnumMap;Landroid/content/Context;)Lcom/fyber/Fyber$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/fyber/Fyber$Settings$UIStringIdentifier;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/fyber/Fyber$Settings;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/fyber/Fyber$Settings;->setCustomUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;ILandroid/content/Context;)Lcom/fyber/Fyber$Settings;

    goto :goto_0

    .line 508
    :cond_0
    return-object p0
.end method

.method public updateUserId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/a/a;->a(Ljava/lang/String;)V

    .line 269
    return-void
.end method
