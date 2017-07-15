.class public abstract Lcom/inmobi/ads/NativeV2ScrollableContainer;
.super Landroid/widget/FrameLayout;
.source "NativeV2ScrollableContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeV2ScrollableContainer$a;,
        Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;
    }
.end annotation


# instance fields
.field private final a:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->TYPE_PAGED:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2ScrollableContainer;->a:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/inmobi/ads/NativeV2ScrollableContainer;->a:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    .line 23
    return-void
.end method


# virtual methods
.method abstract a(Lcom/inmobi/ads/aj;Lcom/inmobi/ads/ap;IILcom/inmobi/ads/NativeV2ScrollableContainer$a;)V
.end method

.method public final getType()Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2ScrollableContainer;->a:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    return-object v0
.end method
