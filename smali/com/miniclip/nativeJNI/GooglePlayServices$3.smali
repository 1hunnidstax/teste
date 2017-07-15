.class Lcom/miniclip/nativeJNI/GooglePlayServices$3;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->loadVisiblePeople()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$3;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 362
    check-cast p1, Lcom/google/android/gms/plus/People$LoadPeopleResult;

    invoke-virtual {p0, p1}, Lcom/miniclip/nativeJNI/GooglePlayServices$3;->onResult(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
    .locals 1
    .param p1, "loadPeopleResult"    # Lcom/google/android/gms/plus/People$LoadPeopleResult;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$3;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-virtual {v0, p1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->onPeopleLoaded(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V

    .line 366
    return-void
.end method
