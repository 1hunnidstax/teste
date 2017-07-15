.class final Lcom/miniclip/nativeJNI/cocojava$11;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava;->sendSMS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$11;->val$txt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v0, "sendIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miniclip/nativeJNI/cocojava$11;->val$txt:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 811
    const-string v1, "sms_body"

    iget-object v2, p0, Lcom/miniclip/nativeJNI/cocojava$11;->val$txt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    :cond_0
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v1, v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->startActivity(Landroid/content/Intent;)V

    .line 815
    return-void
.end method
