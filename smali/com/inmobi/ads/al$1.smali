.class final Lcom/inmobi/ads/al$1;
.super Ljava/lang/Object;
.source "NativeV2DisplayAdTracker.java"

# interfaces
.implements Lcom/inmobi/ads/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p2, Lcom/inmobi/ads/ai;

    invoke-virtual {p2, p1}, Lcom/inmobi/ads/ai;->a(Landroid/view/View;)V

    .line 36
    return-void
.end method
