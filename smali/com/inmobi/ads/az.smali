.class Lcom/inmobi/ads/az;
.super Lcom/inmobi/ads/bq;
.source "PollingVisibilityTracker.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/inmobi/ads/c$h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/inmobi/ads/az;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/az;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/c$h;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/inmobi/ads/bq;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/inmobi/ads/az;->c:Lcom/inmobi/ads/c$h;

    .line 19
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/ads/az;->c:Lcom/inmobi/ads/c$h;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->e()I

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/inmobi/ads/az;->i()V

    .line 33
    return-void
.end method
