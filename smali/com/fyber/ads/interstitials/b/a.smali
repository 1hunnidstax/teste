.class public final Lcom/fyber/ads/interstitials/b/a;
.super Lcom/fyber/ads/internal/InternalAd;
.source "InternalInterstitialAd.java"

# interfaces
.implements Lcom/fyber/ads/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/internal/InternalAd",
        "<",
        "Lcom/fyber/ads/interstitials/b/a;",
        "Lcom/fyber/ads/interstitials/InterstitialAd;",
        ">;",
        "Lcom/fyber/ads/internal/b",
        "<",
        "Lcom/fyber/ads/interstitials/InterstitialAdListener;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

.field private c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/ads/internal/InternalAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    .line 49
    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    .line 53
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method private a(Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/fyber/b/b/b$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/b/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p2}, Lcom/fyber/b/b/b$a;->b(Ljava/lang/String;)Lcom/fyber/b/e$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b$a;

    .line 148
    invoke-virtual {v0, p0}, Lcom/fyber/b/b/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b;

    invoke-virtual {v0}, Lcom/fyber/b/b/b;->b()V

    .line 149
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    .line 67
    sget-object v0, Lcom/fyber/ads/internal/a;->f:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;)V

    .line 68
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdShown(Lcom/fyber/ads/interstitials/InterstitialAd;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected final a(Lcom/fyber/ads/internal/a;)V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/fyber/b/b/b$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/b/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    .line 154
    invoke-virtual {v0, p0}, Lcom/fyber/b/b/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b;

    invoke-virtual {v0}, Lcom/fyber/b/b/b;->b()V

    .line 155
    return-void
.end method

.method public final a(Lcom/fyber/ads/interstitials/InterstitialAdListener;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    .line 57
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/fyber/ads/interstitials/InterstitialAdListener;

    .line 3061
    iput-object p1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    .line 36
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    .line 77
    if-nez p2, :cond_0

    .line 78
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    .line 79
    :goto_0
    iget-boolean v1, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-nez v1, :cond_5

    .line 81
    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUnknown:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    move-object p2, v0

    .line 85
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Lcom/fyber/ads/internal/a;->i:Lcom/fyber/ads/internal/a;

    invoke-direct {p0, v0, p1}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p2}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdClosed(Lcom/fyber/ads/interstitials/InterstitialAd;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_3

    .line 94
    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p2}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdClosed(Lcom/fyber/ads/interstitials/InterstitialAd;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    .line 96
    :cond_3
    return-void

    .line 78
    :cond_4
    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    goto :goto_0

    :cond_5
    move-object p2, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    .line 104
    sget-object v0, Lcom/fyber/ads/internal/a;->j:Lcom/fyber/ads/internal/a;

    invoke-direct {p0, v0, p2}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p1}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdError(Lcom/fyber/ads/interstitials/InterstitialAd;Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p1}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdError(Lcom/fyber/ads/interstitials/InterstitialAd;Ljava/lang/String;)V

    .line 113
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    .line 118
    sget-object v0, Lcom/fyber/ads/internal/a;->h:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;)V

    .line 119
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdClicked(Lcom/fyber/ads/interstitials/InterstitialAd;)V

    .line 123
    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    sget-object v0, Lcom/fyber/ads/internal/c;->d:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    .line 134
    invoke-static {v1}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/interstitials/b/a;)V

    .line 135
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "The Ad was already shown."

    .line 1099
    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v0, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v0, p1, p0}, Lcom/fyber/mediation/b;->a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "The current network is not available"

    .line 2099
    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic h()Lcom/fyber/ads/Ad;
    .locals 2

    .prologue
    .line 36
    .line 2143
    new-instance v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/b/a;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fyber/ads/interstitials/InterstitialAd;-><init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;)V

    .line 36
    return-object v0
.end method
