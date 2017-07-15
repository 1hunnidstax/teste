.class final Lcom/miniclip/nativeJNI/GooglePlayServices$15;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$type:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$delegate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 955
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$100()Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->gPlay:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$url:Ljava/lang/String;

    iget v4, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$15;->val$delegate:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miniclip/nativeJNI/GooglePlayServices;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 956
    return-void
.end method
