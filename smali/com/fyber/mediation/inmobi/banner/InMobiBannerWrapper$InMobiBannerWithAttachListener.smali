.class Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;
.super Landroid/widget/RelativeLayout;
.source "InMobiBannerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InMobiBannerWithAttachListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    .line 109
    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->activity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->access$100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 111
    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 119
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerView:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->access$300(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method
