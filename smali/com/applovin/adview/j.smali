.class Lcom/applovin/adview/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/ar;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/adview/ap;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Clicking through from video button..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->z(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    return-void
.end method

.method public b(Lcom/applovin/impl/adview/ap;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Closing ad from video button..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    return-void
.end method

.method public c(Lcom/applovin/impl/adview/ap;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Skipping video from video button..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->skipVideo()V

    return-void
.end method
