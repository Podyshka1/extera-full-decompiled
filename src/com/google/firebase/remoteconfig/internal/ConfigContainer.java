package com.google.firebase.remoteconfig.internal;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ConfigContainer {
    private static final Date DEFAULTS_FETCH_TIME = new Date(0);
    private JSONArray abtExperiments;
    private JSONObject configsJson;
    private JSONObject containerJson;
    private Date fetchTime;
    private JSONObject personalizationMetadata;
    private JSONArray rolloutMetadata;
    private long templateVersionNumber;

    private ConfigContainer(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2, long j, JSONArray jSONArray2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        jSONObject3.put("template_version_number_key", j);
        jSONObject3.put("rollout_metadata_key", jSONArray2);
        this.configsJson = jSONObject;
        this.fetchTime = date;
        this.abtExperiments = jSONArray;
        this.personalizationMetadata = jSONObject2;
        this.templateVersionNumber = j;
        this.rolloutMetadata = jSONArray2;
        this.containerJson = jSONObject3;
    }

    static ConfigContainer copyOf(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        JSONObject jSONObject2 = jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rollout_metadata_key");
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
        }
        return new ConfigContainer(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2, jSONObject.optLong("template_version_number_key"), jSONArrayOptJSONArray);
    }

    private static ConfigContainer deepCopyOf(JSONObject jSONObject) {
        return copyOf(new JSONObject(jSONObject.toString()));
    }

    public JSONObject getConfigs() {
        return this.configsJson;
    }

    public Date getFetchTime() {
        return this.fetchTime;
    }

    public JSONArray getAbtExperiments() {
        return this.abtExperiments;
    }

    public JSONObject getPersonalizationMetadata() {
        return this.personalizationMetadata;
    }

    public long getTemplateVersionNumber() {
        return this.templateVersionNumber;
    }

    public JSONArray getRolloutMetadata() {
        return this.rolloutMetadata;
    }

    public String toString() {
        return this.containerJson.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ConfigContainer) {
            return this.containerJson.toString().equals(((ConfigContainer) obj).toString());
        }
        return false;
    }

    private Map createRolloutParameterKeyMap() throws JSONException {
        HashMap map = new HashMap();
        for (int i = 0; i < getRolloutMetadata().length(); i++) {
            JSONObject jSONObject = getRolloutMetadata().getJSONObject(i);
            String string = jSONObject.getString("rolloutId");
            String string2 = jSONObject.getString("variantId");
            JSONArray jSONArray = jSONObject.getJSONArray("affectedParameterKeys");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                String string3 = jSONArray.getString(i2);
                if (!map.containsKey(string3)) {
                    map.put(string3, new HashMap());
                }
                Map map2 = (Map) map.get(string3);
                if (map2 != null) {
                    map2.put(string, string2);
                }
            }
        }
        return map;
    }

    public Set getChangedParams(ConfigContainer configContainer) throws JSONException {
        JSONObject configs = deepCopyOf(configContainer.containerJson).getConfigs();
        Map mapCreateRolloutParameterKeyMap = createRolloutParameterKeyMap();
        Map mapCreateRolloutParameterKeyMap2 = configContainer.createRolloutParameterKeyMap();
        HashSet hashSet = new HashSet();
        Iterator<String> itKeys = getConfigs().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!configContainer.getConfigs().has(next)) {
                hashSet.add(next);
            } else if (!getConfigs().get(next).equals(configContainer.getConfigs().get(next))) {
                hashSet.add(next);
            } else if ((getPersonalizationMetadata().has(next) && !configContainer.getPersonalizationMetadata().has(next)) || (!getPersonalizationMetadata().has(next) && configContainer.getPersonalizationMetadata().has(next))) {
                hashSet.add(next);
            } else if (getPersonalizationMetadata().has(next) && configContainer.getPersonalizationMetadata().has(next) && !getPersonalizationMetadata().getJSONObject(next).toString().equals(configContainer.getPersonalizationMetadata().getJSONObject(next).toString())) {
                hashSet.add(next);
            } else if (mapCreateRolloutParameterKeyMap.containsKey(next) != mapCreateRolloutParameterKeyMap2.containsKey(next)) {
                hashSet.add(next);
            } else if (mapCreateRolloutParameterKeyMap.containsKey(next) && mapCreateRolloutParameterKeyMap2.containsKey(next) && !((Map) mapCreateRolloutParameterKeyMap.get(next)).equals(mapCreateRolloutParameterKeyMap2.get(next))) {
                hashSet.add(next);
            } else {
                configs.remove(next);
            }
        }
        Iterator<String> itKeys2 = configs.keys();
        while (itKeys2.hasNext()) {
            hashSet.add(itKeys2.next());
        }
        return hashSet;
    }

    public int hashCode() {
        return this.containerJson.hashCode();
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class Builder {
        private JSONArray builderAbtExperiments;
        private JSONObject builderConfigsJson;
        private Date builderFetchTime;
        private JSONObject builderPersonalizationMetadata;
        private JSONArray builderRolloutMetadata;
        private long builderTemplateVersionNumber;

        private Builder() {
            this.builderConfigsJson = new JSONObject();
            this.builderFetchTime = ConfigContainer.DEFAULTS_FETCH_TIME;
            this.builderAbtExperiments = new JSONArray();
            this.builderPersonalizationMetadata = new JSONObject();
            this.builderTemplateVersionNumber = 0L;
            this.builderRolloutMetadata = new JSONArray();
        }

        public Builder replaceConfigsWith(JSONObject jSONObject) {
            try {
                this.builderConfigsJson = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public Builder withFetchTime(Date date) {
            this.builderFetchTime = date;
            return this;
        }

        public Builder withAbtExperiments(JSONArray jSONArray) {
            try {
                this.builderAbtExperiments = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public Builder withPersonalizationMetadata(JSONObject jSONObject) {
            try {
                this.builderPersonalizationMetadata = new JSONObject(jSONObject.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public Builder withTemplateVersionNumber(long j) {
            this.builderTemplateVersionNumber = j;
            return this;
        }

        public Builder withRolloutMetadata(JSONArray jSONArray) {
            try {
                this.builderRolloutMetadata = new JSONArray(jSONArray.toString());
            } catch (JSONException unused) {
            }
            return this;
        }

        public ConfigContainer build() {
            return new ConfigContainer(this.builderConfigsJson, this.builderFetchTime, this.builderAbtExperiments, this.builderPersonalizationMetadata, this.builderTemplateVersionNumber, this.builderRolloutMetadata);
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }
}
