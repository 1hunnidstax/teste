.class Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;
.super Ljava/lang/Object;
.source "AdColonyInterstitialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AntiFreezer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;


# direct methods
.method private constructor <init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .param p2, "x1"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;-><init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;
    invoke-static {v1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/adcolony/sdk/AdColonyInterstitial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->cancel()Z

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying the ad was cancelled after waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    # getter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->ANTI_FREEZE_TIMEOUT:J
    invoke-static {}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$100()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms for the ad to open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$200(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Ljava/lang/String;)V

    .line 51
    # getter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
