package com.google.android.datatransport;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Event extends Event {
    private final Integer code;
    private final Object payload;
    private final Priority priority;
    private final ProductData productData;

    @Override // com.google.android.datatransport.Event
    public EventContext getEventContext() {
        return null;
    }

    AutoValue_Event(Integer num, Object obj, Priority priority, ProductData productData, EventContext eventContext) {
        this.code = num;
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.payload = obj;
        if (priority == null) {
            throw new NullPointerException("Null priority");
        }
        this.priority = priority;
        this.productData = productData;
    }

    @Override // com.google.android.datatransport.Event
    public Integer getCode() {
        return this.code;
    }

    @Override // com.google.android.datatransport.Event
    public Object getPayload() {
        return this.payload;
    }

    @Override // com.google.android.datatransport.Event
    public Priority getPriority() {
        return this.priority;
    }

    @Override // com.google.android.datatransport.Event
    public ProductData getProductData() {
        return this.productData;
    }

    public String toString() {
        return "Event{code=" + this.code + ", payload=" + this.payload + ", priority=" + this.priority + ", productData=" + this.productData + ", eventContext=" + ((Object) null) + "}";
    }

    public boolean equals(Object obj) {
        ProductData productData;
        if (obj == this) {
            return true;
        }
        if (obj instanceof Event) {
            Event event = (Event) obj;
            Integer num = this.code;
            if (num != null ? num.equals(event.getCode()) : event.getCode() == null) {
                if (this.payload.equals(event.getPayload()) && this.priority.equals(event.getPriority()) && ((productData = this.productData) != null ? productData.equals(event.getProductData()) : event.getProductData() == null)) {
                    event.getEventContext();
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.code;
        int iHashCode = ((((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.payload.hashCode()) * 1000003) ^ this.priority.hashCode()) * 1000003;
        ProductData productData = this.productData;
        return (iHashCode ^ (productData != null ? productData.hashCode() : 0)) * 1000003;
    }
}
