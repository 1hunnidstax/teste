.class Lcom/miniclip/nativeJNI/GooglePlayServices$8;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->onPeopleLoaded(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$8;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 865
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->people:Lorg/json/JSONObject;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$300()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mDelegate:I
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$200()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->MPeopleLoaded(Ljava/lang/String;I)V

    .line 866
    return-void
.end method
