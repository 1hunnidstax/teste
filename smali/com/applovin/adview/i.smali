.class Lcom/applovin/adview/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ao;

.field final synthetic b:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/impl/adview/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/i;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    iput-object p2, p0, Lcom/applovin/adview/i;->a:Lcom/applovin/impl/adview/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/adview/i;->a:Lcom/applovin/impl/adview/ao;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ao;->h()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/applovin/adview/i;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v3, p0, Lcom/applovin/adview/i;->b:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v3}, Lcom/applovin/adview/AppLovinInterstitialActivity;->y(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/ap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;Landroid/view/View;ZJ)V

    return-void
.end method
