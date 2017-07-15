.class final Lcom/miniclip/ads/TapjoyHelper$1;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ads/TapjoyHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/miniclip/ads/TapjoyActivityListener;

    invoke-direct {v0}, Lcom/miniclip/ads/TapjoyActivityListener;-><init>()V

    .line 44
    .local v0, "activityListener":Lcom/miniclip/ads/TapjoyActivityListener;
    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 46
    invoke-virtual {v0}, Lcom/miniclip/ads/TapjoyActivityListener;->onStart()V

    .line 47
    return-void
.end method
