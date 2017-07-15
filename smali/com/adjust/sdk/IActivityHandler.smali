.class public interface abstract Lcom/adjust/sdk/IActivityHandler;
.super Ljava/lang/Object;
.source "IActivityHandler.java"


# virtual methods
.method public abstract finishedTrackingActivity(Lorg/json/JSONObject;)V
.end method

.method public abstract getAttributionPackage()Lcom/adjust/sdk/ActivityPackage;
.end method

.method public abstract init(Lcom/adjust/sdk/AdjustConfig;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract readOpenUrl(Landroid/net/Uri;J)V
.end method

.method public abstract sendReferrer(Ljava/lang/String;J)V
.end method

.method public abstract setAskingAttribution(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setOfflineMode(Z)V
.end method

.method public abstract trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
.end method

.method public abstract trackSubsessionEnd()V
.end method

.method public abstract trackSubsessionStart()V
.end method

.method public abstract tryUpdateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z
.end method
