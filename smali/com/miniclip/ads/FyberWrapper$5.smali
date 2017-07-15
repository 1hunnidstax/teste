.class final Lcom/miniclip/ads/FyberWrapper$5;
.super Ljava/lang/Object;
.source "FyberWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ads/FyberWrapper;->showTestSuiteUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->showTestSuite(Landroid/app/Activity;)V

    .line 181
    return-void
.end method
