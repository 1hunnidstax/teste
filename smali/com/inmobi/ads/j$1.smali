.class Lcom/inmobi/ads/j$1;
.super Ljava/lang/Object;
.source "AdUnitCache.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/j;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/j;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/j;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/inmobi/ads/j$1;->a:Lcom/inmobi/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/inmobi/ads/j$1;->a:Lcom/inmobi/ads/j;

    invoke-static {v0}, Lcom/inmobi/ads/j;->a(Lcom/inmobi/ads/j;)V

    .line 74
    :cond_0
    return-void
.end method
