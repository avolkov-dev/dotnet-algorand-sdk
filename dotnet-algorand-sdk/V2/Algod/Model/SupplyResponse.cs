/* 
 * Algod REST API.
 *
 * API endpoint for algod operations.
 *
 * OpenAPI spec version: 0.0.1
 * Contact: contact@algorand.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = Algorand.V2.Algod.Client.SwaggerDateConverter;

namespace Algorand.V2.Algod.Model
{
    /// <summary>
    /// Supply represents the current supply of MicroAlgos in the system
    /// </summary>
    [DataContract]
    public partial class SupplyResponse :  IEquatable<SupplyResponse>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SupplyResponse" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected SupplyResponse() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="SupplyResponse" /> class.
        /// </summary>
        /// <param name="currentRound">Round (required).</param>
        /// <param name="onlineMoney">OnlineMoney (required).</param>
        /// <param name="totalMoney">TotalMoney (required).</param>
        public SupplyResponse(long? currentRound = default, long? onlineMoney = default, long? totalMoney = default)
        {
            // to ensure "currentRound" is required (not null)
            if (currentRound == null)
            {
                throw new InvalidDataException("currentRound is a required property for SupplyResponse and cannot be null");
            }
            else
            {
                this.CurrentRound = currentRound;
            }
            // to ensure "onlineMoney" is required (not null)
            if (onlineMoney == null)
            {
                throw new InvalidDataException("onlineMoney is a required property for SupplyResponse and cannot be null");
            }
            else
            {
                this.OnlineMoney = onlineMoney;
            }
            // to ensure "totalMoney" is required (not null)
            if (totalMoney == null)
            {
                throw new InvalidDataException("totalMoney is a required property for SupplyResponse and cannot be null");
            }
            else
            {
                this.TotalMoney = totalMoney;
            }
        }
        
        /// <summary>
        /// Round
        /// </summary>
        /// <value>Round</value>
        [DataMember(Name="current_round", EmitDefaultValue=false)]
        public long? CurrentRound { get; set; }

        /// <summary>
        /// OnlineMoney
        /// </summary>
        /// <value>OnlineMoney</value>
        [DataMember(Name="online-money", EmitDefaultValue=false)]
        public long? OnlineMoney { get; set; }

        /// <summary>
        /// TotalMoney
        /// </summary>
        /// <value>TotalMoney</value>
        [DataMember(Name="total-money", EmitDefaultValue=false)]
        public long? TotalMoney { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SupplyResponse {\n");
            sb.Append("  CurrentRound: ").Append(CurrentRound).Append("\n");
            sb.Append("  OnlineMoney: ").Append(OnlineMoney).Append("\n");
            sb.Append("  TotalMoney: ").Append(TotalMoney).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as SupplyResponse);
        }

        /// <summary>
        /// Returns true if SupplyResponse instances are equal
        /// </summary>
        /// <param name="input">Instance of SupplyResponse to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SupplyResponse input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.CurrentRound == input.CurrentRound ||
                    (this.CurrentRound != null &&
                    this.CurrentRound.Equals(input.CurrentRound))
                ) && 
                (
                    this.OnlineMoney == input.OnlineMoney ||
                    (this.OnlineMoney != null &&
                    this.OnlineMoney.Equals(input.OnlineMoney))
                ) && 
                (
                    this.TotalMoney == input.TotalMoney ||
                    (this.TotalMoney != null &&
                    this.TotalMoney.Equals(input.TotalMoney))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.CurrentRound != null)
                    hashCode = hashCode * 59 + this.CurrentRound.GetHashCode();
                if (this.OnlineMoney != null)
                    hashCode = hashCode * 59 + this.OnlineMoney.GetHashCode();
                if (this.TotalMoney != null)
                    hashCode = hashCode * 59 + this.TotalMoney.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
